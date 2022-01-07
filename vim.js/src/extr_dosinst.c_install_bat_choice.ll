; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_install_bat_choice.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_dosinst.c_install_bat_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i64 }

@targets = common dso_local global %struct.TYPE_3__* null, align 8
@choices = common dso_local global %struct.TYPE_4__* null, align 8
@NUL = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\0AERROR: Cannot open \22%s\22 for writing.\0A\00", align 1
@need_uninstall_entry = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"@echo off\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"rem -- Run Vim --\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"set VIM_EXE_DIR=%s\0A\00", align 1
@installdir = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"if exist \22%%VIM%%\\%s\\%s\22 set VIM_EXE_DIR=%%VIM%%\\%s\0A\00", align 1
@VIM_VERSION_NODOT = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [61 x i8] c"if exist \22%%VIMRUNTIME%%\\%s\22 set VIM_EXE_DIR=%%VIMRUNTIME%%\0A\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"if exist \22%%VIM_EXE_DIR%%\\%s\22 goto havevim\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"echo \22%%VIM_EXE_DIR%%\\%s\22 not found\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"goto eof\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c":havevim\0A\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"rem collect the arguments in VIMARGS for Win95\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"set VIMARGS=\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"set VIMNOFORK=\0A\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c":loopstart\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"if .%%1==. goto loopend\0A\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"if NOT .%%1==.-f goto noforkarg\0A\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"set VIMNOFORK=1\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c":noforkarg\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"set VIMARGS=%%VIMARGS%% %%1\0A\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"shift\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"goto loopstart\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c":loopend\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"if .%%OS%%==.Windows_NT goto ntaction\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"if .%%VIMNOFORK%%==.1 goto nofork\0A\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"start \00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"\22%%VIM_EXE_DIR%%\\%s\22 %s %%VIMARGS%%\0A\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c":nofork\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"start /w \00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c":ntaction\0A\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"rem for WinNT we can use %%*\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"if .%%VIMNOFORK%%==.1 goto noforknt\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"start \22dummy\22 /b \00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"\22%%VIM_EXE_DIR%%\\%s\22 %s %%*\0A\00", align 1
@.str.35 = private unnamed_addr constant [11 x i8] c":noforknt\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"start \22dummy\22 /b /wait \00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"\0A:eof\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"%s has been %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"created\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"overwritten\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @install_bat_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_bat_choice(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %4, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @targets, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @choices, align 8
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @NUL, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %229

54:                                               ; preds = %1
  %55 = load i8*, i8** %3, align 8
  %56 = call i32* @fopen(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %56, i32** %7, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i8*, i8** %3, align 8
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  br label %228

62:                                               ; preds = %54
  store i32 1, i32* @need_uninstall_entry, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 (i32*, i8*, ...) @fprintf(i32* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32*, i32** %7, align 8
  %70 = load i8*, i8** @installdir, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = load i8*, i8** @VIM_VERSION_NODOT, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** @VIM_VERSION_NODOT, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i8* %73, i8* %74, i8* %75)
  %77 = load i32*, i32** %7, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i8* %78)
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32*, i32** %7, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i64 0, i64 0), i8* %83)
  %85 = load i32*, i32** %7, align 8
  %86 = load i8*, i8** %5, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i8* %86)
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i64 0, i64 0))
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 103
  br i1 %101, label %102, label %105

102:                                              ; preds = %62
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %62
  %106 = load i32*, i32** %7, align 8
  %107 = call i32 (i32*, i8*, ...) @fprintf(i32* %106, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 (i32*, i8*, ...) @fprintf(i32* %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 103
  br i1 %113, label %114, label %121

114:                                              ; preds = %105
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 (i32*, i8*, ...) @fprintf(i32* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0))
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 (i32*, i8*, ...) @fprintf(i32* %117, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 (i32*, i8*, ...) @fprintf(i32* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0))
  br label %121

121:                                              ; preds = %114, %105
  %122 = load i32*, i32** %7, align 8
  %123 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0))
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 (i32*, i8*, ...) @fprintf(i32* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0))
  %126 = load i32*, i32** %7, align 8
  %127 = call i32 (i32*, i8*, ...) @fprintf(i32* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %128 = load i32*, i32** %7, align 8
  %129 = call i32 (i32*, i8*, ...) @fprintf(i32* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 (i32*, i8*, ...) @fprintf(i32* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 (i32*, i8*, ...) @fprintf(i32* %132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 (i32*, i8*, ...) @fprintf(i32* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 103
  br i1 %139, label %140, label %145

140:                                              ; preds = %121
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 (i32*, i8*, ...) @fprintf(i32* %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0))
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 (i32*, i8*, ...) @fprintf(i32* %143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i64 0, i64 0))
  br label %145

145:                                              ; preds = %140, %121
  %146 = load i32*, i32** %7, align 8
  %147 = load i8*, i8** %5, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i8* %147, i8* %148)
  %150 = load i32*, i32** %7, align 8
  %151 = call i32 (i32*, i8*, ...) @fprintf(i32* %150, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %152 = load i32*, i32** %7, align 8
  %153 = call i32 (i32*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %154 = load i8*, i8** %5, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 103
  br i1 %157, label %158, label %171

158:                                              ; preds = %145
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 (i32*, i8*, ...) @fprintf(i32* %159, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0))
  %161 = load i32*, i32** %7, align 8
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0))
  %163 = load i32*, i32** %7, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0), i8* %164, i8* %165)
  %167 = load i32*, i32** %7, align 8
  %168 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %169 = load i32*, i32** %7, align 8
  %170 = call i32 (i32*, i8*, ...) @fprintf(i32* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %171

171:                                              ; preds = %158, %145
  %172 = load i32*, i32** %7, align 8
  %173 = call i32 (i32*, i8*, ...) @fprintf(i32* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0))
  %174 = load i32*, i32** %7, align 8
  %175 = call i32 (i32*, i8*, ...) @fprintf(i32* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0))
  %176 = load i8*, i8** %5, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 103
  br i1 %179, label %180, label %185

180:                                              ; preds = %171
  %181 = load i32*, i32** %7, align 8
  %182 = call i32 (i32*, i8*, ...) @fprintf(i32* %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.32, i64 0, i64 0))
  %183 = load i32*, i32** %7, align 8
  %184 = call i32 (i32*, i8*, ...) @fprintf(i32* %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0))
  br label %185

185:                                              ; preds = %180, %171
  %186 = load i32*, i32** %7, align 8
  %187 = load i8*, i8** %5, align 8
  %188 = load i8*, i8** %6, align 8
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %186, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i8* %187, i8* %188)
  %190 = load i32*, i32** %7, align 8
  %191 = call i32 (i32*, i8*, ...) @fprintf(i32* %190, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %192 = load i32*, i32** %7, align 8
  %193 = call i32 (i32*, i8*, ...) @fprintf(i32* %192, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i8*, i8** %5, align 8
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 103
  br i1 %197, label %198, label %207

198:                                              ; preds = %185
  %199 = load i32*, i32** %7, align 8
  %200 = call i32 (i32*, i8*, ...) @fprintf(i32* %199, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.35, i64 0, i64 0))
  %201 = load i32*, i32** %7, align 8
  %202 = call i32 (i32*, i8*, ...) @fprintf(i32* %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0))
  %203 = load i32*, i32** %7, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = call i32 (i32*, i8*, ...) @fprintf(i32* %203, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i8* %204, i8* %205)
  br label %207

207:                                              ; preds = %198, %185
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 (i32*, i8*, ...) @fprintf(i32* %208, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %210 = load i32*, i32** %7, align 8
  %211 = call i32 (i32*, i8*, ...) @fprintf(i32* %210, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %212 = load i8*, i8** %5, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 103
  br i1 %215, label %216, label %219

216:                                              ; preds = %207
  %217 = load i32*, i32** %7, align 8
  %218 = call i32 (i32*, i8*, ...) @fprintf(i32* %217, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %207
  %220 = load i32*, i32** %7, align 8
  %221 = call i32 @fclose(i32* %220)
  %222 = load i8*, i8** %3, align 8
  %223 = load i8*, i8** %4, align 8
  %224 = icmp eq i8* %223, null
  %225 = zext i1 %224 to i64
  %226 = select i1 %224, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.40, i64 0, i64 0)
  %227 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i64 0, i64 0), i8* %222, i8* %226)
  br label %228

228:                                              ; preds = %219, %59
  br label %229

229:                                              ; preds = %228, %1
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
