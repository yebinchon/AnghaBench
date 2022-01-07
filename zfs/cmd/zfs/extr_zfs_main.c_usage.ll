; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_usage.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@B_FALSE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@current_command = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"usage: zfs command args ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"where 'command' is one of the following:\0A\0A\00", align 1
@NCOMMAND = common dso_local global i32 0, align 4
@command_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\0AEach dataset is of the form: pool/[dataset/]*dataset[@name]\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"inherit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [42 x i8] c"\0AThe following properties are supported:\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"\0A\09%-14s %s  %s   %s\0A\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"PROPERTY\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"EDIT\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"INHERIT\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"VALUES\00", align 1
@usage_prop_cb = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c"\09%-15s \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"userused@...\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c" NO       NO   <size>\0A\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"groupused@...\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"projectused@...\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"userobjused@...\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"groupobjused@...\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"projectobjused@...\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"userquota@...\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"YES       NO   <size> | none\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"groupquota@...\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"projectquota@...\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"userobjquota@...\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"groupobjquota@...\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"projectobjquota@...\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"written@<snap>\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"written#<bookmark>\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"\0ASizes are specified in bytes with standard units such as K, M, G, etc.\0A\00", align 1
@.str.34 = private unnamed_addr constant [83 x i8] c"\0AUser-defined properties can be specified by using a name containing a colon (:).\0A\00", align 1
@.str.35 = private unnamed_addr constant [280 x i8] c"\0AThe {user|group|project}[obj]{used|quota}@ properties must be appended with\0Aa user|group|project specifier of one of these forms:\0A    POSIX name      (eg: \22matt\22)\0A    POSIX id        (eg: \22126829\22)\0A    SMB name@domain (eg: \22matt@sun\22)\0A    SMB SID         (eg: \22S-1-234-567-89\22)\0A\00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\0AFor the property list, run: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"zfs set|get\00", align 1
@.str.38 = private unnamed_addr constant [45 x i8] c"\0AFor the delegated permission list, run: %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"zfs allow|unallow\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"ZFS_ABORT\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"dumping core by request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* @B_FALSE, align 8
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %2, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32*, i32** @stdout, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load i32*, i32** @stderr, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32* [ %10, %9 ], [ %12, %11 ]
  store i32* %14, i32** %5, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %16 = icmp eq %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %57

17:                                               ; preds = %13
  %18 = load i32*, i32** %5, align 8
  %19 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 (i32*, i8*, ...) @fprintf(i32* %18, i8* %19)
  %21 = load i32*, i32** %5, align 8
  %22 = call i8* @gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %50, %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NCOMMAND, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @command_table, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %49

39:                                               ; preds = %28
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @command_table, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @get_usage(i32 %46)
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %39, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load i32*, i32** %5, align 8
  %55 = call i8* @gettext(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %56 = call i32 (i32*, i8*, ...) @fprintf(i32* %54, i8* %55)
  br label %67

57:                                               ; preds = %13
  %58 = load i32*, i32** %5, align 8
  %59 = call i8* @gettext(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %58, i8* %59)
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @get_usage(i32 %64)
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %57, %53
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %69 = icmp ne %struct.TYPE_3__* %68, null
  br i1 %69, label %70, label %96

70:                                               ; preds = %67
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @strcmp(i32 %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %94, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @strcmp(i32 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @strcmp(i32 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current_command, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @strcmp(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88, %82, %76, %70
  %95 = load i64, i64* @B_TRUE, align 8
  store i64 %95, i64* %4, align 8
  br label %96

96:                                               ; preds = %94, %88, %67
  %97 = load i64, i64* %4, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %176

99:                                               ; preds = %96
  %100 = load i32*, i32** %5, align 8
  %101 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %100, i8* %101)
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %105 = load i32, i32* @usage_prop_cb, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i64, i64* @B_FALSE, align 8
  %108 = load i64, i64* @B_TRUE, align 8
  %109 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %110 = call i32 @zprop_iter(i32 %105, i32* %106, i64 %107, i64 %108, i32 %109)
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %115 = load i32*, i32** %5, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0))
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %121 = load i32*, i32** %5, align 8
  %122 = call i32 (i32*, i8*, ...) @fprintf(i32* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 (i32*, i8*, ...) @fprintf(i32* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %125 = load i32*, i32** %5, align 8
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %127 = load i32*, i32** %5, align 8
  %128 = call i32 (i32*, i8*, ...) @fprintf(i32* %127, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 (i32*, i8*, ...) @fprintf(i32* %131, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0))
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 (i32*, i8*, ...) @fprintf(i32* %133, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 (i32*, i8*, ...) @fprintf(i32* %135, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %139 = load i32*, i32** %5, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0))
  %141 = load i32*, i32** %5, align 8
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0))
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 (i32*, i8*, ...) @fprintf(i32* %145, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %147 = load i32*, i32** %5, align 8
  %148 = call i32 (i32*, i8*, ...) @fprintf(i32* %147, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 (i32*, i8*, ...) @fprintf(i32* %151, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 (i32*, i8*, ...) @fprintf(i32* %153, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %155 = load i32*, i32** %5, align 8
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %155, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %157, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.25, i64 0, i64 0))
  %159 = load i32*, i32** %5, align 8
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i64 0, i64 0))
  %161 = load i32*, i32** %5, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.32, i64 0, i64 0))
  %165 = load i32*, i32** %5, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %167 = load i32*, i32** %5, align 8
  %168 = call i8* @gettext(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.33, i64 0, i64 0))
  %169 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* %168)
  %170 = load i32*, i32** %5, align 8
  %171 = call i8* @gettext(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.34, i64 0, i64 0))
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %170, i8* %171)
  %173 = load i32*, i32** %5, align 8
  %174 = call i8* @gettext(i8* getelementptr inbounds ([280 x i8], [280 x i8]* @.str.35, i64 0, i64 0))
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %173, i8* %174)
  br label %183

176:                                              ; preds = %96
  %177 = load i32*, i32** %5, align 8
  %178 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0))
  %179 = call i32 (i32*, i8*, ...) @fprintf(i32* %177, i8* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0))
  %180 = load i32*, i32** %5, align 8
  %181 = call i8* @gettext(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0))
  %182 = call i32 (i32*, i8*, ...) @fprintf(i32* %180, i8* %181, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0))
  br label %183

183:                                              ; preds = %176, %99
  %184 = call i32* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0))
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = call i32 @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i64 0, i64 0))
  %188 = call i32 (...) @abort() #3
  unreachable

189:                                              ; preds = %183
  %190 = load i64, i64* %2, align 8
  %191 = icmp ne i64 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 0, i32 2
  %194 = call i32 @exit(i32 %193) #3
  unreachable
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @get_usage(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @zprop_iter(i32, i32*, i64, i64, i32) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
