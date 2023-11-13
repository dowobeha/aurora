# aurora on bash

This script was adapted from the following original ASCII art                                                                                                                                                                                                                                                                                    


```                                                                                                                                                                                                                                                                                                                                
  ` : | | | |:  ||  :     `  :  |  |+|: | : : :|   .        `              .                                                                                                                                                                                                                                                                      
      ` : | :|  ||  |:  :    `  |  | :| : | : |:   |  .                    :                                                                                                                                                                                                                                                                      
         .' ':  ||  |:  |  '       ` || | : | |: : |   .  `           .   :.                                                                                                                                                                                                                                                                      
                `'  ||  |  ' |   *    ` : | | :| |*|  :   :               :|                                                                                                                                                                                                                                                                      
        *    *       `  |  : :  |  .      ` ' :| | :| . : :         *   :.||                                                                                                                                                                                                                                                                      
             .`            | |  |  : .:|       ` | || | : |: |          | ||                                                                                                                                                                                                                                                                      
      '          .         + `  |  :  .: .         '| | : :| :    .   |:| ||                                                                                                                                                                                                                                                                      
         .                 .    ` *|  || :       `    | | :| | :      |:| |                                                                                                                                                                                                                                                                       
 .                .          .        || |.: *          | || : :     :|||                                                                                                                                                                                                                                                                         
        .            .   . *    .   .  ` |||.  +        + '| |||  .  ||`                                                                                                                                                                                                                                                                          
     .             *              .     +:`|!             . ||||  :.||`                                                                                                                                                                                                                                                                           
 +                      .                ..!|*          . | :`||+ |||`                                                                                                                                                                                                                                                                            
     .                         +      : |||`        .| :| | | |.| ||`     .                                                                                                                                                                                                                                                                       
       *     +   '               +  :|| |`     :.+. || || | |:`|| `                                                                                                                                                                                                                                                                               
                            .      .||` .    ..|| | |: '` `| | |`  +                                                                                                                                                                                                                                                                              
  .       +++                      ||        !|!: `       :| |                                                                                                                                                                                                                                                                                    
              +         .      .    | .      `|||.:      .||    .      .    `                                                                                                                                                                                                                                                                     
          '                           `|.   .  `:|||   + ||'     `                                                                                                                                                                                                                                                                                
  __    +      *                         `'       `'|.    `:                                                                                                                                                                                                                                                                                      
"'  `---"""----....____,..^---`^``----.,.___          `.    `.  .    ____,.,-                                                                                                                                                                                                                                                                     
    ___,--'""`---"'   ^  ^ ^        ^       """'---,..___ __,..---""'                                                                                                                                                                                                                                                                             
--"'                           ^                         ``--..,__                                                                                                                                                                                                                                                                                
```                                                                                                                                                                                                                                                                                                                                                  
 Winter night's northern lights                                                                                                                                                                                                                                                                                                                   
 D. Rice                                                                                                                                                                                                                                                                                                                                          
 - Friday, October 11, 1996 at 04:01:33 (EDT)     

## To install

* `mkdir ~/.aurora`
* `cd ~/.aurora`
* `touch next`
* `curl https://raw.githubusercontent.com/dowobeha/aurora/main/aurora.sh > aurora.sh`
* `chmod u+x aurora.sh`

## First time

Run the following to get the program ready
* `~/.aurora/aurora.sh`

## To run

* `~/.aurora/aurora.sh`

## Optional: to run on ssh login

* Put the following in ~/.ssh/rc
* Note: You must put in your actual username

```
# If scp, exit
test -z $SSH_TTY && exit

# Otherwise...
clear
/home/YOUR_USERNAME_GOES_HERE/.aurora/aurora.sh
echo
```
