; ModuleID = '/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_cli.c_KdbpCmdSet.c'
source_filename = "/home/carl/AnghaBench/reactos/ntoskrnl/kdbg/extr_kdb_cli.c_KdbpCmdSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KdbDoNotEnter = common dso_local global i32 0, align 4
@KdbpCmdSet.ExceptionNames = internal constant [21 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [11 x i8] c"ZERODEVIDE\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"DEBUGTRAP\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NMI\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"INT3\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"OVERFLOW\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"BOUND\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"INVALIDOP\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"NOMATHCOP\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"DOUBLEFAULT\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"RESERVED(9)\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"INVALIDTSS\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"SEGMENTNOTPRESENT\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"STACKFAULT\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"GPF\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"PAGEFAULT\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"RESERVED(15)\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"MATHFAULT\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"ALIGNMENTCHECK\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"MACHINECHECK\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"SIMDFAULT\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"OTHERS\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Available settings:\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"  syntax [intel|at&t]\0A\00", align 1
@.str.23 = private unnamed_addr constant [67 x i8] c"  condition [exception|*] [first|last] [never|always|kmode|umode]\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"  break_on_module_load [true|false]\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"syntax\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"syntax = %s\0A\00", align 1
@KdbUseIntelSyntax = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [6 x i8] c"intel\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"at&t\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [22 x i8] c"Unknown syntax '%s'.\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"condition\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Conditions:                 (First)  (Last)\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"  #%02d  %-20s %-8s %-8s\0A\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"       %-20s %-8s %-8s\0A\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"Unknown exception '%s'.\0A\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"set condition: second argument must be 'first' or 'last'\0A\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"never\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"always\00", align 1
@KdbEnterAlways = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [6 x i8] c"umode\00", align 1
@KdbEnterFromUmode = common dso_local global i32 0, align 4
@.str.42 = private unnamed_addr constant [6 x i8] c"kmode\00", align 1
@KdbEnterFromKmode = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [77 x i8] c"set condition: third argument must be 'never', 'always', 'umode' or 'kmode'\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"Couldn't change condition for exception #%02d\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"Couldn't change condition for all exceptions\0A\00", align 1
@.str.46 = private unnamed_addr constant [67 x i8] c"Condition for exception #%02d (%s): FirstChance %s  LastChance %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [67 x i8] c"Condition for all other exceptions: FirstChance %s  LastChance %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [21 x i8] c"break_on_module_load\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"break_on_module_load = %s\0A\00", align 1
@KdbBreakOnModuleLoad = common dso_local global i32 0, align 4
@.str.50 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Unknown setting '%s'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @KdbpCmdSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @KdbpCmdSet(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %8, align 8
  %11 = load i32, i32* @KdbDoNotEnter, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @KdbDoNotEnter, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0))
  br label %385

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load i32, i32* @KdbUseIntelSyntax, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0)
  %34 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* %33)
  br label %62

35:                                               ; preds = %26
  %36 = load i32, i32* %4, align 4
  %37 = icmp sge i32 %36, 3
  br i1 %37, label %38, label %61

38:                                               ; preds = %35
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @_stricmp(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* @KdbUseIntelSyntax, align 4
  br label %60

46:                                               ; preds = %38
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @_stricmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @FALSE, align 4
  store i32 %53, i32* @KdbUseIntelSyntax, align 4
  br label %59

54:                                               ; preds = %46
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.29, i64 0, i64 0), i8* %57)
  br label %59

59:                                               ; preds = %54, %52
  br label %60

60:                                               ; preds = %59, %44
  br label %61

61:                                               ; preds = %60, %35
  br label %62

62:                                               ; preds = %61, %29
  br label %384

63:                                               ; preds = %20
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %310

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %132

72:                                               ; preds = %69
  %73 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.31, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %113, %72
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @RTL_NUMBER_OF(i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 0))
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %116

79:                                               ; preds = %74
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %113

86:                                               ; preds = %79
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @TRUE, align 4
  %89 = call i32 @KdbpGetEnterCondition(i32 %87, i32 %88, i32* %9)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @FALSE, align 4
  %93 = call i32 @ASSERT(i32 %92)
  br label %94

94:                                               ; preds = %91, %86
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = call i32 @KdbpGetEnterCondition(i32 %95, i32 %96, i32* %10)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @FALSE, align 4
  %101 = call i32 @ASSERT(i32 %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %110)
  %112 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %103, i8* %107, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %102, %85
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %74

116:                                              ; preds = %74
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @RTL_NUMBER_OF(i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 0))
  %119 = sub nsw i32 %118, 1
  %120 = icmp eq i32 %117, %119
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %129)
  %131 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %126, i32 %128, i32 %130)
  br label %309

132:                                              ; preds = %69
  %133 = load i32, i32* %4, align 4
  %134 = icmp sge i32 %133, 5
  br i1 %134, label %135, label %142

135:                                              ; preds = %132
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 2
  %138 = load i8*, i8** %137, align 8
  %139 = call i64 @strcmp(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %135
  store i32 -1, i32* %6, align 4
  br label %191

142:                                              ; preds = %135, %132
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 @strtoul(i8* %145, i8** %8, i32 0)
  store i32 %146, i32* %6, align 4
  %147 = load i8**, i8*** %5, align 8
  %148 = getelementptr inbounds i8*, i8** %147, i64 2
  %149 = load i8*, i8** %148, align 8
  %150 = load i8*, i8** %8, align 8
  %151 = icmp eq i8* %149, %150
  br i1 %151, label %152, label %180

152:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %176, %152
  %154 = load i32, i32* %6, align 4
  %155 = call i32 @RTL_NUMBER_OF(i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 0))
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %179

157:                                              ; preds = %153
  %158 = load i32, i32* %6, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 %159
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %157
  br label %176

164:                                              ; preds = %157
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = load i8**, i8*** %5, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 2
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @_stricmp(i8* %168, i8* %171)
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %164
  br label %179

175:                                              ; preds = %164
  br label %176

176:                                              ; preds = %175, %163
  %177 = load i32, i32* %6, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %6, align 4
  br label %153

179:                                              ; preds = %174, %153
  br label %180

180:                                              ; preds = %179, %142
  %181 = load i32, i32* %6, align 4
  %182 = call i32 @RTL_NUMBER_OF(i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 0))
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i8**, i8*** %5, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i64 2
  %187 = load i8*, i8** %186, align 8
  %188 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.35, i64 0, i64 0), i8* %187)
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %3, align 4
  br label %387

190:                                              ; preds = %180
  br label %191

191:                                              ; preds = %190, %141
  %192 = load i32, i32* %4, align 4
  %193 = icmp sgt i32 %192, 4
  br i1 %193, label %194, label %269

194:                                              ; preds = %191
  %195 = load i8**, i8*** %5, align 8
  %196 = getelementptr inbounds i8*, i8** %195, i64 3
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @_stricmp(i8* %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %194
  %201 = load i32, i32* @TRUE, align 4
  store i32 %201, i32* %7, align 4
  br label %214

202:                                              ; preds = %194
  %203 = load i8**, i8*** %5, align 8
  %204 = getelementptr inbounds i8*, i8** %203, i64 3
  %205 = load i8*, i8** %204, align 8
  %206 = call i64 @_stricmp(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %202
  %209 = load i32, i32* @FALSE, align 4
  store i32 %209, i32* %7, align 4
  br label %213

210:                                              ; preds = %202
  %211 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.38, i64 0, i64 0))
  %212 = load i32, i32* @TRUE, align 4
  store i32 %212, i32* %3, align 4
  br label %387

213:                                              ; preds = %208
  br label %214

214:                                              ; preds = %213, %200
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 4
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @_stricmp(i8* %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i64 0, i64 0))
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %214
  %221 = load i32, i32* @KdbDoNotEnter, align 4
  store i32 %221, i32* %9, align 4
  br label %252

222:                                              ; preds = %214
  %223 = load i8**, i8*** %5, align 8
  %224 = getelementptr inbounds i8*, i8** %223, i64 4
  %225 = load i8*, i8** %224, align 8
  %226 = call i64 @_stricmp(i8* %225, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %222
  %229 = load i32, i32* @KdbEnterAlways, align 4
  store i32 %229, i32* %9, align 4
  br label %251

230:                                              ; preds = %222
  %231 = load i8**, i8*** %5, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 4
  %233 = load i8*, i8** %232, align 8
  %234 = call i64 @_stricmp(i8* %233, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i64 0, i64 0))
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %230
  %237 = load i32, i32* @KdbEnterFromUmode, align 4
  store i32 %237, i32* %9, align 4
  br label %250

238:                                              ; preds = %230
  %239 = load i8**, i8*** %5, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 4
  %241 = load i8*, i8** %240, align 8
  %242 = call i64 @_stricmp(i8* %241, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i64 0, i64 0))
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %238
  %245 = load i32, i32* @KdbEnterFromKmode, align 4
  store i32 %245, i32* %9, align 4
  br label %249

246:                                              ; preds = %238
  %247 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.43, i64 0, i64 0))
  %248 = load i32, i32* @TRUE, align 4
  store i32 %248, i32* %3, align 4
  br label %387

249:                                              ; preds = %244
  br label %250

250:                                              ; preds = %249, %236
  br label %251

251:                                              ; preds = %250, %228
  br label %252

252:                                              ; preds = %251, %220
  %253 = load i32, i32* %6, align 4
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @KdbpSetEnterCondition(i32 %253, i32 %254, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %268, label %258

258:                                              ; preds = %252
  %259 = load i32, i32* %6, align 4
  %260 = icmp sge i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, i32* %6, align 4
  %263 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0), i32 %262)
  br label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %6, align 4
  %266 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i64 0, i64 0), i32 %265)
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %252
  br label %308

269:                                              ; preds = %191
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* @TRUE, align 4
  %272 = call i32 @KdbpGetEnterCondition(i32 %270, i32 %271, i32* %9)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %269
  %275 = load i32, i32* @FALSE, align 4
  %276 = call i32 @ASSERT(i32 %275)
  br label %277

277:                                              ; preds = %274, %269
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @FALSE, align 4
  %280 = call i32 @KdbpGetEnterCondition(i32 %278, i32 %279, i32* %10)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %277
  %283 = load i32, i32* @FALSE, align 4
  %284 = call i32 @ASSERT(i32 %283)
  br label %285

285:                                              ; preds = %282, %277
  %286 = load i32, i32* %6, align 4
  %287 = call i32 @RTL_NUMBER_OF(i8** getelementptr inbounds ([21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 0))
  %288 = sub nsw i32 %287, 1
  %289 = icmp slt i32 %286, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %285
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [21 x i8*], [21 x i8*]* @KdbpCmdSet.ExceptionNames, i64 0, i64 %293
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %296)
  %298 = load i32, i32* %10, align 4
  %299 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %298)
  %300 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.46, i64 0, i64 0), i32 %291, i8* %295, i32 %297, i32 %299)
  br label %307

301:                                              ; preds = %285
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %302)
  %304 = load i32, i32* %10, align 4
  %305 = call i32 @KDB_ENTER_CONDITION_TO_STRING(i32 %304)
  %306 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.47, i64 0, i64 0), i32 %303, i32 %305)
  br label %307

307:                                              ; preds = %301, %290
  br label %308

308:                                              ; preds = %307, %268
  br label %309

309:                                              ; preds = %308, %116
  br label %383

310:                                              ; preds = %63
  %311 = load i8**, i8*** %5, align 8
  %312 = getelementptr inbounds i8*, i8** %311, i64 1
  %313 = load i8*, i8** %312, align 8
  %314 = call i64 @strcmp(i8* %313, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.48, i64 0, i64 0))
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %377

316:                                              ; preds = %310
  %317 = load i32, i32* %4, align 4
  %318 = icmp eq i32 %317, 2
  br i1 %318, label %319, label %325

319:                                              ; preds = %316
  %320 = load i32, i32* @KdbBreakOnModuleLoad, align 4
  %321 = icmp ne i32 %320, 0
  %322 = zext i1 %321 to i64
  %323 = select i1 %321, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0)
  %324 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0), i8* %323)
  br label %376

325:                                              ; preds = %316
  %326 = load i32, i32* %4, align 4
  %327 = icmp sge i32 %326, 3
  br i1 %327, label %328, label %375

328:                                              ; preds = %325
  %329 = load i8**, i8*** %5, align 8
  %330 = getelementptr inbounds i8*, i8** %329, i64 2
  %331 = load i8*, i8** %330, align 8
  %332 = call i64 @_stricmp(i8* %331, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0))
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %346, label %334

334:                                              ; preds = %328
  %335 = load i8**, i8*** %5, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 2
  %337 = load i8*, i8** %336, align 8
  %338 = call i64 @_stricmp(i8* %337, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0))
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %346, label %340

340:                                              ; preds = %334
  %341 = load i8**, i8*** %5, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 2
  %343 = load i8*, i8** %342, align 8
  %344 = call i64 @_stricmp(i8* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0))
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %340, %334, %328
  %347 = load i32, i32* @TRUE, align 4
  store i32 %347, i32* @KdbBreakOnModuleLoad, align 4
  br label %374

348:                                              ; preds = %340
  %349 = load i8**, i8*** %5, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 2
  %351 = load i8*, i8** %350, align 8
  %352 = call i64 @_stricmp(i8* %351, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0))
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %366, label %354

354:                                              ; preds = %348
  %355 = load i8**, i8*** %5, align 8
  %356 = getelementptr inbounds i8*, i8** %355, i64 2
  %357 = load i8*, i8** %356, align 8
  %358 = call i64 @_stricmp(i8* %357, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0))
  %359 = icmp eq i64 %358, 0
  br i1 %359, label %366, label %360

360:                                              ; preds = %354
  %361 = load i8**, i8*** %5, align 8
  %362 = getelementptr inbounds i8*, i8** %361, i64 2
  %363 = load i8*, i8** %362, align 8
  %364 = call i64 @_stricmp(i8* %363, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i64 0, i64 0))
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %360, %354, %348
  %367 = load i32, i32* @FALSE, align 4
  store i32 %367, i32* @KdbBreakOnModuleLoad, align 4
  br label %373

368:                                              ; preds = %360
  %369 = load i8**, i8*** %5, align 8
  %370 = getelementptr inbounds i8*, i8** %369, i64 2
  %371 = load i8*, i8** %370, align 8
  %372 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), i8* %371)
  br label %373

373:                                              ; preds = %368, %366
  br label %374

374:                                              ; preds = %373, %346
  br label %375

375:                                              ; preds = %374, %325
  br label %376

376:                                              ; preds = %375, %319
  br label %382

377:                                              ; preds = %310
  %378 = load i8**, i8*** %5, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 1
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 (i8*, ...) @KdbpPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i64 0, i64 0), i8* %380)
  br label %382

382:                                              ; preds = %377, %376
  br label %383

383:                                              ; preds = %382, %309
  br label %384

384:                                              ; preds = %383, %62
  br label %385

385:                                              ; preds = %384, %15
  %386 = load i32, i32* @TRUE, align 4
  store i32 %386, i32* %3, align 4
  br label %387

387:                                              ; preds = %385, %246, %210, %184
  %388 = load i32, i32* %3, align 4
  ret i32 %388
}

declare dso_local i32 @KdbpPrint(i8*, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @_stricmp(i8*, i8*) #1

declare dso_local i32 @RTL_NUMBER_OF(i8**) #1

declare dso_local i32 @KdbpGetEnterCondition(i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @KDB_ENTER_CONDITION_TO_STRING(i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @KdbpSetEnterCondition(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
