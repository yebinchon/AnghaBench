#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  synctex_io_mode_t ;
typedef  scalar_t__ synctex_bool_t ;
typedef  int /*<<< orphan*/ * gzFile ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 scalar_t__ FUNC0 (char*,char**,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char const*) ; 
 scalar_t__ FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 (char*,char*) ; 
 char* FUNC10 (char*,char const*) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  synctex_io_gz_mask ; 
 char* synctex_suffix ; 
 char* synctex_suffix_gz ; 

int FUNC12(const char * output, char ** synctex_name_ref, gzFile * file_ref, synctex_bool_t add_quotes, synctex_io_mode_t * io_mode_ref) {
	if (synctex_name_ref && file_ref && io_mode_ref) {
        /*  1 local variables that uses dynamic memory */
        char * synctex_name = NULL;
        gzFile the_file = NULL;
        char * quoteless_synctex_name = NULL;
		size_t size = 0;
        synctex_io_mode_t io_mode = *io_mode_ref;
		const char * mode = FUNC2(io_mode);
		/*  now create the synctex file name */
		size = FUNC11(output)+FUNC11(synctex_suffix)+FUNC11(synctex_suffix_gz)+1;
		synctex_name = (char *)FUNC7(size);
		if (NULL == synctex_name) {
			FUNC1("!  __synctex_open: Memory problem (1)\n");
			return 1;
		}
		/*  we have reserved for synctex enough memory to copy output (including its 2 eventual quotes), both suffices,
		 *  including the terminating character. size is free now. */
		if (synctex_name != FUNC10(synctex_name,output)) {
			FUNC1("!  __synctex_open: Copy problem\n");
return_on_error:
			FUNC4(synctex_name);
			FUNC4(quoteless_synctex_name);
			return 2;
		}
		/*  remove the last path extension if any */
		FUNC3(synctex_name);
		if (!FUNC11(synctex_name)) {
			goto return_on_error;		
		}
		/*  now insert quotes. */
		if (add_quotes) {
			char * quoted = NULL;
			if (FUNC0(synctex_name,&quoted,size) || (NULL == quoted)) {
				/*	There was an error or quoting does not make sense: */
				goto return_on_error;
			}
			quoteless_synctex_name = synctex_name;
			synctex_name = quoted;
		}
		/*	Now add to synctex_name the first path extension. */
		if (synctex_name != FUNC9(synctex_name,synctex_suffix)){
			FUNC1("!  __synctex_open: Concatenation problem (can't add suffix '%s')\n",synctex_suffix);
			goto return_on_error;
		}
		/*	Add to quoteless_synctex_name as well, if relevant. */
		if (quoteless_synctex_name && (quoteless_synctex_name != FUNC9(quoteless_synctex_name,synctex_suffix))){
			FUNC4(quoteless_synctex_name);
			quoteless_synctex_name = NULL;
		}
		if (NULL == (the_file = FUNC6(synctex_name,mode))) {
			/*  Could not open this file */
			if (errno != ENOENT) {
				/*  The file does exist, this is a lower level error, I can't do anything. */
				FUNC1("SyncTeX: could not open %s, error %i\n",synctex_name,errno);
				goto return_on_error;
			}
			/*  Apparently, there is no uncompressed synctex file. Try the compressed version */
			if (synctex_name != FUNC9(synctex_name,synctex_suffix_gz)){
				FUNC1("!  __synctex_open: Concatenation problem (can't add suffix '%s')\n",synctex_suffix_gz);
				goto return_on_error;
			}
			io_mode |= synctex_io_gz_mask;
			mode = FUNC2(io_mode); /* the file is a compressed and is a binary file, this caused errors on Windows */
			/*	Add the suffix to the quoteless_synctex_name as well. */
			if (quoteless_synctex_name && (quoteless_synctex_name != FUNC9(quoteless_synctex_name,synctex_suffix_gz))){
				FUNC4(quoteless_synctex_name);
				quoteless_synctex_name = NULL;
			}
			if (NULL == (the_file = FUNC6(synctex_name,mode))) {
				/*  Could not open this file */
				if (errno != ENOENT) {
					/*  The file does exist, this is a lower level error, I can't do anything. */
					FUNC1("SyncTeX: could not open %s, error %i\n",synctex_name,errno);
				}
				goto return_on_error;
			}
		}
		/*	At this point, the file is properly open.
		 *  If we are in the add_quotes mode, we change the file name by removing the quotes. */
		if (quoteless_synctex_name) {
			FUNC5(the_file);
			if (FUNC8(synctex_name,quoteless_synctex_name)) {
				FUNC1("SyncTeX: could not rename %s to %s, error %i\n",synctex_name,quoteless_synctex_name,errno);
				/*	We could not rename, reopen the file with the quoted name. */
				if (NULL == (the_file = FUNC6(synctex_name,mode))) {
					/*  No luck, could not re open this file, something has happened meanwhile */
					if (errno != ENOENT) {
						/*  The file does not exist any more, it has certainly be removed somehow
                         *  this is a lower level error, I can't do anything. */
						FUNC1("SyncTeX: could not open again %s, error %i\n",synctex_name,errno);
					}
					goto return_on_error;
				}
			} else {
                /*  The file has been successfully renamed */
				if (NULL == (the_file = FUNC6(quoteless_synctex_name,mode))) {
					/*  Could not open this file */
					if (errno != ENOENT) {
						/*  The file does exist, this is a lower level error, I can't do anything. */
						FUNC1("SyncTeX: could not open renamed %s, error %i\n",quoteless_synctex_name,errno);
					}
					goto return_on_error;
				}
				/*  The quote free file name should replace the old one:*/
				FUNC4(synctex_name);
				synctex_name = quoteless_synctex_name;
				quoteless_synctex_name = NULL;
			}
		}
        /*  The operation is successfull, return the arguments by value.    */
        * file_ref = the_file;
        * io_mode_ref = io_mode;
        * synctex_name_ref = synctex_name;
		return 0;
	}
	return 3;	/*	Bad parameter.	*/
}