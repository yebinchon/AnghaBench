; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_dos_locale.c_SetDOSLocale.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_dos_locale.c_SetDOSLocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8* }

@MAX_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Keyboard id '%s' is not supported - falling back to 'us'\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Will use DOS keyboard '%s' [%s]\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Unable to find an EGA file with codepage %d [%s]\0A\00", align 1
@kbdrv_data = common dso_local global %struct.TYPE_2__* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"ega.cpx\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"ega.cpi\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Will use codepage %d [%s]\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"\\AUTOEXEC.BAT\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Unable to create 'AUTOEXEC.BAT': %s.\0A\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"@echo off\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"set PATH=.;\\;\\LOCALE\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"echo Using %s keyboard with %s codepage [%d]\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Successfully wrote 'AUTOEXEC.BAT'\0A\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [12 x i8] c"\\CONFIG.SYS\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Unable to create 'CONFIG.SYS': %s.\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"!MENUCOLOR=7,0\0AMENU\0AMENU   FreeDOS Language Selection Menu\0A\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"MENU   \CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\0AMENU\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"[MENU]\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"MENUDEFAULT=1,5\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"%s1%c Use %s keyboard with %s codepage [%d]\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"MENU \00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"MENUITEM=\00", align 1
@.str.23 = private unnamed_addr constant [45 x i8] c"%s2%c Use %s keyboard with %s codepage [%d]\0A\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"MENU\0A12?\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"[1]\0Adevice=\\locale\\display.sys con=(ega,,1)\0A[2]\0A\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Successfully wrote 'CONFIG.SYS'\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"display con=(ega,,1)\0A\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"GOTO %%CONFIG%%\0A\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c":1\0A\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"mode con codepage prepare=((%d) \\locale\\%s) > NUL\0A\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"mode con codepage select=%d > NUL\0A\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"keyb %s,,\\locale\\%s\0A\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c":2\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SetDOSLocale(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = load i32, i32* @MAX_PATH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = call i8* (...) @get_kb()
  store i8* %18, i8** %10, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %10, align 8
  %23 = call i32 @fd_get_kbdrv(i8* %22)
  br label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @ms_get_kbdrv(i8* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i8* %32)
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @fd_get_kbdrv(i8* %37)
  br label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @ms_get_kbdrv(i8* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %27
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i8* @kb_to_hr(i8* %46)
  %48 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %45, i8* %47)
  %49 = call i32 (...) @GetOEMCP()
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = call i8* @fd_get_ega(i32 %53)
  br label %58

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  %57 = call i8* @ms_get_ega(i32 %56)
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i8* [ %54, %52 ], [ %57, %55 ]
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i8* @cp_to_hr(i32 %64)
  %66 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %63, i8* %65)
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbdrv_data, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)
  store i8* %76, i8** %12, align 8
  br label %84

77:                                               ; preds = %58
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @fd_upgrade_cp(i32 %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @cp_to_hr(i32 %86)
  %88 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %85, i8* %87)
  %89 = load i32, i32* %9, align 4
  %90 = icmp eq i32 %89, 437
  br i1 %90, label %91, label %119

91:                                               ; preds = %84
  %92 = load i8*, i8** %10, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %91
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @static_strcpy(i8* %17, i8* %96)
  %98 = call i32 @static_strcat(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %99 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %99, i32** %6, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = call i32 (...) @WindowsErrorString()
  %104 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  %105 = load i64, i64* @FALSE, align 8
  store i64 %105, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %227

106:                                              ; preds = %95
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 (i32*, i8*, ...) @fprintf(i32* %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %111 = load i32*, i32** %6, align 8
  %112 = call i8* @kb_to_hr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %113 = call i8* @cp_to_hr(i32 437)
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %112, i8* %113, i32 437)
  %115 = load i32*, i32** %6, align 8
  %116 = call i32 @fclose(i32* %115)
  %117 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %118 = load i64, i64* @TRUE, align 8
  store i64 %118, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %227

119:                                              ; preds = %91, %84
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 @static_strcpy(i8* %17, i8* %120)
  %122 = call i32 @static_strcat(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %123 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %123, i32** %6, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %119
  %127 = call i32 (...) @WindowsErrorString()
  %128 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %127)
  %129 = load i64, i64* @FALSE, align 8
  store i64 %129, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %227

130:                                              ; preds = %119
  %131 = load i64, i64* %5, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %130
  %134 = load i32*, i32** %6, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.16, i64 0, i64 0))
  %136 = load i32*, i32** %6, align 8
  %137 = call i32 (i32*, i8*, ...) @fprintf(i32* %136, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0))
  br label %141

138:                                              ; preds = %130
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %139, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32*, i32** %6, align 8
  %143 = call i32 (i32*, i8*, ...) @fprintf(i32* %142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %144 = load i32*, i32** %6, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp ne i64 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)
  %149 = load i64, i64* %5, align 8
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 41, i32 44
  %153 = load i8*, i8** %10, align 8
  %154 = call i8* @kb_to_hr(i8* %153)
  %155 = load i32, i32* %9, align 4
  %156 = call i8* @cp_to_hr(i32 %155)
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (i32*, i8*, ...) @fprintf(i32* %144, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.20, i64 0, i64 0), i8* %148, i32 %152, i8* %154, i8* %156, i32 %157)
  %159 = load i32*, i32** %6, align 8
  %160 = load i64, i64* %5, align 8
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0)
  %164 = load i64, i64* %5, align 8
  %165 = icmp ne i64 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 41, i32 44
  %168 = call i8* @kb_to_hr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %169 = call i8* @cp_to_hr(i32 437)
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.23, i64 0, i64 0), i8* %163, i32 %167, i8* %168, i8* %169, i32 437)
  %171 = load i32*, i32** %6, align 8
  %172 = load i64, i64* %5, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.26, i64 0, i64 0)
  %176 = call i32 (i32*, i8*, ...) @fprintf(i32* %171, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i8* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = call i32 @fclose(i32* %177)
  %179 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0))
  %180 = load i8*, i8** %4, align 8
  %181 = call i32 @static_strcpy(i8* %17, i8* %180)
  %182 = call i32 @static_strcat(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %183 = call i32* @fopen(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32* %183, i32** %6, align 8
  %184 = load i32*, i32** %6, align 8
  %185 = icmp eq i32* %184, null
  br i1 %185, label %186, label %190

186:                                              ; preds = %141
  %187 = call i32 (...) @WindowsErrorString()
  %188 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %187)
  %189 = load i64, i64* @FALSE, align 8
  store i64 %189, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %227

190:                                              ; preds = %141
  %191 = load i32*, i32** %6, align 8
  %192 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0))
  %193 = load i32*, i32** %6, align 8
  %194 = call i32 (i32*, i8*, ...) @fprintf(i32* %193, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %195 = load i64, i64* %5, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %190
  %198 = load i32*, i32** %6, align 8
  %199 = call i32 (i32*, i8*, ...) @fprintf(i32* %198, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %190
  %201 = load i32*, i32** %6, align 8
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0))
  %203 = load i32*, i32** %6, align 8
  %204 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i64 0, i64 0))
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load i8*, i8** %12, align 8
  %208 = call i32 (i32*, i8*, ...) @fprintf(i32* %205, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 %206, i8* %207)
  %209 = load i32*, i32** %6, align 8
  %210 = load i32, i32* %9, align 4
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %209, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i32 %210)
  %212 = load i32*, i32** %6, align 8
  %213 = load i8*, i8** %10, align 8
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kbdrv_data, align 8
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 1
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 (i32*, i8*, ...) @fprintf(i32* %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.33, i64 0, i64 0), i8* %213, i8* %219)
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 (i32*, i8*, ...) @fprintf(i32* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %223 = load i32*, i32** %6, align 8
  %224 = call i32 @fclose(i32* %223)
  %225 = call i32 (i8*, ...) @uprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %226 = load i64, i64* @TRUE, align 8
  store i64 %226, i64* %3, align 8
  store i32 1, i32* %13, align 4
  br label %227

227:                                              ; preds = %200, %186, %126, %106, %102
  %228 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %228)
  %229 = load i64, i64* %3, align 8
  ret i64 %229
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @get_kb(...) #2

declare dso_local i32 @fd_get_kbdrv(i8*) #2

declare dso_local i32 @ms_get_kbdrv(i8*) #2

declare dso_local i32 @uprintf(i8*, ...) #2

declare dso_local i8* @kb_to_hr(i8*) #2

declare dso_local i32 @GetOEMCP(...) #2

declare dso_local i8* @fd_get_ega(i32) #2

declare dso_local i8* @ms_get_ega(i32) #2

declare dso_local i8* @cp_to_hr(i32) #2

declare dso_local i32 @fd_upgrade_cp(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @static_strcpy(i8*, i8*) #2

declare dso_local i32 @static_strcat(i8*, i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @WindowsErrorString(...) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
