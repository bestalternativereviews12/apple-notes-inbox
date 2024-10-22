FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��

NAME:
Notes Inbox

SUMMARY:
Auto-import scans, images, etc. as attachments of a new note in Apple Notes by way of folder actions.
Any file dropped into the selected folder in Finder will be imported into the target folder in Apple Notes.

INSTALL:
1. Copy this script to "~/Library/Scripts/Folder Action Scripts" (or "/Library/Scripts/Folder Action Scripts")
2. In Finder, create a new folder named something like "Notes Inbox" (inside your home folder, for example)
3. Right click on new folder and choose "Services > Folder Actions Setup" (or open the setup utility directly from "/System/Library/CoreServices/Applications/Folder Actions Setup.app")
4. Allow service to run if prompted
5. Make sure "Enable Folder Actions" is checked
6. Add the new "Notes Inbox" in the left side folder list (if not already there and selected)
7. Add the "Notes Inbox" script to the right side script selection (and make sure checked)

CONFIG:
Change the "notePrefix" and "notesFolder" properties as desired.
notePrefix could be something like "Scan: " if you wish to prefix that to anything processed by this script.
notesFolder is "Inbox" by default and is the name of the folder in Apple Notes where incoming notes will be created.

CF:
https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/reference/ASLR_folder_actions.html


AUTHOR:
Ethan Schoonover
es@ethanschoonover.com
github: altercation

     � 	 	8 
 
 N A M E : 
 N o t e s   I n b o x 
 
 S U M M A R Y : 
 A u t o - i m p o r t   s c a n s ,   i m a g e s ,   e t c .   a s   a t t a c h m e n t s   o f   a   n e w   n o t e   i n   A p p l e   N o t e s   b y   w a y   o f   f o l d e r   a c t i o n s . 
 A n y   f i l e   d r o p p e d   i n t o   t h e   s e l e c t e d   f o l d e r   i n   F i n d e r   w i l l   b e   i m p o r t e d   i n t o   t h e   t a r g e t   f o l d e r   i n   A p p l e   N o t e s . 
 
 I N S T A L L : 
 1 .   C o p y   t h i s   s c r i p t   t o   " ~ / L i b r a r y / S c r i p t s / F o l d e r   A c t i o n   S c r i p t s "   ( o r   " / L i b r a r y / S c r i p t s / F o l d e r   A c t i o n   S c r i p t s " ) 
 2 .   I n   F i n d e r ,   c r e a t e   a   n e w   f o l d e r   n a m e d   s o m e t h i n g   l i k e   " N o t e s   I n b o x "   ( i n s i d e   y o u r   h o m e   f o l d e r ,   f o r   e x a m p l e ) 
 3 .   R i g h t   c l i c k   o n   n e w   f o l d e r   a n d   c h o o s e   " S e r v i c e s   >   F o l d e r   A c t i o n s   S e t u p "   ( o r   o p e n   t h e   s e t u p   u t i l i t y   d i r e c t l y   f r o m   " / S y s t e m / L i b r a r y / C o r e S e r v i c e s / A p p l i c a t i o n s / F o l d e r   A c t i o n s   S e t u p . a p p " ) 
 4 .   A l l o w   s e r v i c e   t o   r u n   i f   p r o m p t e d 
 5 .   M a k e   s u r e   " E n a b l e   F o l d e r   A c t i o n s "   i s   c h e c k e d 
 6 .   A d d   t h e   n e w   " N o t e s   I n b o x "   i n   t h e   l e f t   s i d e   f o l d e r   l i s t   ( i f   n o t   a l r e a d y   t h e r e   a n d   s e l e c t e d ) 
 7 .   A d d   t h e   " N o t e s   I n b o x "   s c r i p t   t o   t h e   r i g h t   s i d e   s c r i p t   s e l e c t i o n   ( a n d   m a k e   s u r e   c h e c k e d ) 
 
 C O N F I G : 
 C h a n g e   t h e   " n o t e P r e f i x "   a n d   " n o t e s F o l d e r "   p r o p e r t i e s   a s   d e s i r e d . 
 n o t e P r e f i x   c o u l d   b e   s o m e t h i n g   l i k e   " S c a n :   "   i f   y o u   w i s h   t o   p r e f i x   t h a t   t o   a n y t h i n g   p r o c e s s e d   b y   t h i s   s c r i p t . 
 n o t e s F o l d e r   i s   " I n b o x "   b y   d e f a u l t   a n d   i s   t h e   n a m e   o f   t h e   f o l d e r   i n   A p p l e   N o t e s   w h e r e   i n c o m i n g   n o t e s   w i l l   b e   c r e a t e d . 
 
 C F : 
 h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / A p p l e S c r i p t / C o n c e p t u a l / A p p l e S c r i p t L a n g G u i d e / r e f e r e n c e / A S L R _ f o l d e r _ a c t i o n s . h t m l 
 
 
 A U T H O R : 
 E t h a n   S c h o o n o v e r 
 e s @ e t h a n s c h o o n o v e r . c o m 
 g i t h u b :   a l t e r c a t i o n 
 
   
  
 l     ��������  ��  ��        j     �� �� 0 
noteprefix 
notePrefix  m        �          j    �� �� 0 notesfolder notesFolder  m       �   
 I n b o x      l     ��������  ��  ��        i    	    I      �� ���� 0 processfile processFile   ��  o      ���� 0 filetoprocess fileToProcess��  ��    k     �        r      ! " ! c      # $ # o     ���� 0 filetoprocess fileToProcess $ m    ��
�� 
ctxt " o      ���� 0 thefile theFile    % & % O    ' ( ' r   
  ) * ) n   
  + , + 1    ��
�� 
pnam , 4   
 �� -
�� 
file - o    ���� 0 thefile theFile * o      ���� 0 notename noteName ( m     . .�                                                                                  MACS  alis    @  Macintosh HD               �MMBD ����
Finder.app                                                     �����MM        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   &  / 0 / r     1 2 1 c     3 4 3 n     5 6 5 1    ��
�� 
shdt 6 l    7���� 7 I   ������
�� .misccurdldt    ��� null��  ��  ��  ��   4 m    ��
�� 
TEXT 2 o      ���� 0 	timestamp 	timeStamp 0  8 9 8 r     1 : ; : b     / < = < b     - > ? > b     + @ A @ b     ) B C B b     ' D E D m     ! F F � G G  < b o d y > < h 1 > E o   ! &���� 0 
noteprefix 
notePrefix C o   ' (���� 0 notename noteName A m   ) * H H � I I * < / h 1 > < p > I m p o r t e d   o n :   ? o   + ,���� 0 	timestamp 	timeStamp = m   - . J J � K K  < / p > < / b o d y > ; o      ���� 0 notebody noteBody 9  L M L O   2 � N O N k   6 � P P  Q R Q Z   6 Z S T���� S H   6 C U U l  6 B V���� V I  6 B�� W��
�� .coredoexnull���     **** W 4   6 >�� X
�� 
cfol X o   8 =���� 0 notesfolder notesFolder��  ��  ��   T I  F V���� Y
�� .corecrel****      � null��   Y �� Z [
�� 
kocl Z m   H I��
�� 
cfol [ �� \��
�� 
prdt \ K   J R ] ] �� ^��
�� 
pnam ^ o   K P���� 0 notesfolder notesFolder��  ��  ��  ��   R  _ ` _ r   [ v a b a I  [ t�� c d
�� .corecrel****      � null c m   [ ^��
�� 
note d �� e f
�� 
insh e 4   a i�� g
�� 
cfol g o   c h���� 0 notesfolder notesFolder f �� h��
�� 
prdt h K   j p i i �� j��
�� 
body j o   m n���� 0 notebody noteBody��  ��   b o      ���� 0 newnote newNote `  k l k I  w ����� m
�� .corecrel****      � null��   m �� n o
�� 
kocl n m   y |��
�� 
atts o �� p q
�� 
insh p n    � r s r  ;   � � s n    � t u t 2  � ���
�� 
atts u o    ����� 0 newnote newNote q �� v��
�� 
data v l  � � w���� w 4   � ��� x
�� 
file x o   � ����� 0 thefile theFile��  ��  ��   l  y z y l   � ��� { |��   {nh
				Note: the following delete is a workaround because creating the attachment
				apparently creates TWO attachements, the first being a sort of "ghost" attachment
				of the second, real attachment. The ghost attachment shows up as a large empty
				whitespace placeholder the same size as a PDF page in the document and makes the
				result look empty
				    | � } }� 
 	 	 	 	 N o t e :   t h e   f o l l o w i n g   d e l e t e   i s   a   w o r k a r o u n d   b e c a u s e   c r e a t i n g   t h e   a t t a c h m e n t 
 	 	 	 	 a p p a r e n t l y   c r e a t e s   T W O   a t t a c h e m e n t s ,   t h e   f i r s t   b e i n g   a   s o r t   o f   " g h o s t "   a t t a c h m e n t 
 	 	 	 	 o f   t h e   s e c o n d ,   r e a l   a t t a c h m e n t .   T h e   g h o s t   a t t a c h m e n t   s h o w s   u p   a s   a   l a r g e   e m p t y 
 	 	 	 	 w h i t e s p a c e   p l a c e h o l d e r   t h e   s a m e   s i z e   a s   a   P D F   p a g e   i n   t h e   d o c u m e n t   a n d   m a k e s   t h e 
 	 	 	 	 r e s u l t   l o o k   e m p t y 
 	 	 	 	 z  ~  ~ I  � ��� ���
�� .coredelonull���     obj  � n   � � � � � 4  � ��� �
�� 
atts � m   � �����  � o   � ����� 0 newnote newNote��     ��� � I  � ��� ���
�� .noteshownull���     **** � o   � ����� 0 newnote newNote��  ��   O m   2 3 � ��                                                                                      @ alis    ,  Macintosh HD               �MMBD ����	Notes.app                                                      �����MM        ����  
 cu             Applications   /:System:Applications:Notes.app/   	 N o t e s . a p p    M a c i n t o s h   H D  System/Applications/Notes.app   / ��   M  ��� � O  � � � � � I  � ��� ���
�� .coredelonull���     obj  � 4   � ��� �
�� 
file � o   � ����� 0 thefile theFile��   � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               �MMBD ����
Finder.app                                                     �����MM        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��     � � � l     ��������  ��  ��   �  � � � i   
  � � � I     �� � �
�� .facofgetnull���     alis � o      ���� 0 this_folder   � �� ���
�� 
flst � o      ���� 0 added_items  ��   � Q     - � � � � X     ��� � � I    �� ����� 0 processfile processFile �  ��� � o    ���� 0 
added_item  ��  ��  �� 0 
added_item   � o    ���� 0 added_items   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errtext errText��   � I  & -�� ���
�� .sysodlogaskr        TEXT � b   & ) � � � m   & ' � � � � �  E r r o r :   � o   ' (���� 0 errtext errText��   �  � � � l     ��������  ��  ��   �  � � � l      �� � ���   � � �
the following runs only when executing this script manually via script editor for testing purposes, simulating
incoming files by allowing the user to select a file in lieu of an actual triggered folder action
    � � � �� 
 t h e   f o l l o w i n g   r u n s   o n l y   w h e n   e x e c u t i n g   t h i s   s c r i p t   m a n u a l l y   v i a   s c r i p t   e d i t o r   f o r   t e s t i n g   p u r p o s e s ,   s i m u l a t i n g 
 i n c o m i n g   f i l e s   b y   a l l o w i n g   t h e   u s e r   t o   s e l e c t   a   f i l e   i n   l i e u   o f   a n   a c t u a l   t r i g g e r e d   f o l d e r   a c t i o n 
 �  � � � l     ��������  ��  ��   �  � � � l    
 ����� � I     
�� ����� 0 processfile processFile �  ��� � I   ������
�� .sysostdfalis    ��� null��  ��  ��  ��  ��  ��   �  ��� � l     ��������  ��  ��  ��       � �   � � ��   � �~�}�|�{�z�~ 0 
noteprefix 
notePrefix�} 0 notesfolder notesFolder�| 0 processfile processFile
�{ .facofgetnull���     alis
�z .aevtoappnull  �   � **** � �y �x�w � ��v�y 0 processfile processFile�x �u ��u  �  �t�t 0 filetoprocess fileToProcess�w   � �s�r�q�p�o�n�s 0 filetoprocess fileToProcess�r 0 thefile theFile�q 0 notename noteName�p 0 	timestamp 	timeStamp�o 0 notebody noteBody�n 0 newnote newNote � �m .�l�k�j�i�h F H J ��g�f�e�d�c�b�a�`�_�^�]�\�[�Z
�m 
ctxt
�l 
file
�k 
pnam
�j .misccurdldt    ��� null
�i 
shdt
�h 
TEXT
�g 
cfol
�f .coredoexnull���     ****
�e 
kocl
�d 
prdt�c 
�b .corecrel****      � null
�a 
note
�` 
insh
�_ 
body
�^ 
atts
�] 
data�\ 
�[ .coredelonull���     obj 
�Z .noteshownull���     ****�v ���&E�O� 
*�/�,E�UO*j �,�&E�O�b   %�%�%�%�%E�O� o*�b  /j  *����b  l� Y hOa a *�b  /�a �l� E�O*�a a �a -6a *�/a  O�a k/j O�j UO� 
*�/j U � �Y ��X�W � ��V
�Y .facofgetnull���     alis�X 0 this_folder  �W �U�T�S
�U 
flst�T 0 added_items  �S   � �R�Q�P�O�R 0 this_folder  �Q 0 added_items  �P 0 
added_item  �O 0 errtext errText � �N�M�L�K�J�I ��H
�N 
kocl
�M 
cobj
�L .corecnte****       ****�K 0 processfile processFile�J 0 errtext errText�I  
�H .sysodlogaskr        TEXT�V .   �[��l kh *�k+ [OY��W X  �%j  � �G ��F�E � ��D
�G .aevtoappnull  �   � **** � k     
 � �  ��C�C  �F  �E   �   � �B�A
�B .sysostdfalis    ��� null�A 0 processfile processFile�D **j  k+ ascr  ��ޭ