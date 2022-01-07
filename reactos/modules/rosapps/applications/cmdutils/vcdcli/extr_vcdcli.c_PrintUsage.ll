; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vcdcli/extr_vcdcli.c_PrintUsage.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/cmdutils/vcdcli/extr_vcdcli.c_PrintUsage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"vcdcli usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\09list [/a]: list all the virtual drives\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\09create: create a virtual drive\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"\09mount X path: mount path image on X virtual drive\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\09remount X: remount image on X virtual drive\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"\09eject X: eject image on X virtual drive\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\09remove X: remove virtual drive X\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"mount usage:\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"\09mount <drive letter> <path.iso> [/u] [/j] [/p]\0A\00", align 1
@.str.9 = private unnamed_addr constant [97 x i8] c"\09Mount the ISO image given in <path.iso> on the previously created virtual drive <drive letter>\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\09\09Do not use colon for drive letter\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"\09\09Use /u to make UDF volumes not appear as such\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\09\09Use /j to make Joliet volumes not appear as such\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\09\09Use /p to make the mounting persistent\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"remount usage:\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\09remount <drive letter>\0A\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"\09Remount the ISO image that was previously mounted on the virtual drive <drive letter>\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"eject usage:\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"\09eject <drive letter>\0A\00", align 1
@.str.19 = private unnamed_addr constant [75 x i8] c"\09Ejects the ISO image that is mounted on the virtual drive <drive letter>\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"remove usage:\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"\09remove <drive letter>\0A\00", align 1
@.str.22 = private unnamed_addr constant [70 x i8] c"\09Removes the virtual drive <drive letter> making it no longer usable\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintUsage(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @_ftprintf(i32 %6, i32 %7)
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @_T(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %11 = call i32 @_ftprintf(i32 %9, i32 %10)
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @_T(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @_ftprintf(i32 %12, i32 %13)
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @_T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %17 = call i32 @_ftprintf(i32 %15, i32 %16)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @_T(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %20 = call i32 @_ftprintf(i32 %18, i32 %19)
  %21 = load i32, i32* @stdout, align 4
  %22 = call i32 @_T(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %23 = call i32 @_ftprintf(i32 %21, i32 %22)
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %26 = call i32 @_ftprintf(i32 %24, i32 %25)
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @_T(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 @_ftprintf(i32 %27, i32 %28)
  br label %107

30:                                               ; preds = %1
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %55

33:                                               ; preds = %30
  %34 = load i32, i32* @stdout, align 4
  %35 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %36 = call i32 @_ftprintf(i32 %34, i32 %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @_T(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0))
  %39 = call i32 @_ftprintf(i32 %37, i32 %38)
  %40 = load i32, i32* @stdout, align 4
  %41 = call i32 @_T(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.9, i64 0, i64 0))
  %42 = call i32 @_ftprintf(i32 %40, i32 %41)
  %43 = load i32, i32* @stdout, align 4
  %44 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %45 = call i32 @_ftprintf(i32 %43, i32 %44)
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @_T(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0))
  %48 = call i32 @_ftprintf(i32 %46, i32 %47)
  %49 = load i32, i32* @stdout, align 4
  %50 = call i32 @_T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  %51 = call i32 @_ftprintf(i32 %49, i32 %50)
  %52 = load i32, i32* @stdout, align 4
  %53 = call i32 @_T(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0))
  %54 = call i32 @_ftprintf(i32 %52, i32 %53)
  br label %106

55:                                               ; preds = %30
  %56 = load i32, i32* %2, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* @stdout, align 4
  %60 = call i32 @_T(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %61 = call i32 @_ftprintf(i32 %59, i32 %60)
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @_T(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %64 = call i32 @_ftprintf(i32 %62, i32 %63)
  %65 = load i32, i32* @stdout, align 4
  %66 = call i32 @_T(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.16, i64 0, i64 0))
  %67 = call i32 @_ftprintf(i32 %65, i32 %66)
  %68 = load i32, i32* @stdout, align 4
  %69 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %70 = call i32 @_ftprintf(i32 %68, i32 %69)
  br label %105

71:                                               ; preds = %55
  %72 = load i32, i32* %2, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* @stdout, align 4
  %76 = call i32 @_T(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  %77 = call i32 @_ftprintf(i32 %75, i32 %76)
  %78 = load i32, i32* @stdout, align 4
  %79 = call i32 @_T(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %80 = call i32 @_ftprintf(i32 %78, i32 %79)
  %81 = load i32, i32* @stdout, align 4
  %82 = call i32 @_T(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.19, i64 0, i64 0))
  %83 = call i32 @_ftprintf(i32 %81, i32 %82)
  %84 = load i32, i32* @stdout, align 4
  %85 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %86 = call i32 @_ftprintf(i32 %84, i32 %85)
  br label %104

87:                                               ; preds = %71
  %88 = load i32, i32* %2, align 4
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = load i32, i32* @stdout, align 4
  %92 = call i32 @_T(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  %93 = call i32 @_ftprintf(i32 %91, i32 %92)
  %94 = load i32, i32* @stdout, align 4
  %95 = call i32 @_T(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %96 = call i32 @_ftprintf(i32 %94, i32 %95)
  %97 = load i32, i32* @stdout, align 4
  %98 = call i32 @_T(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.22, i64 0, i64 0))
  %99 = call i32 @_ftprintf(i32 %97, i32 %98)
  %100 = load i32, i32* @stdout, align 4
  %101 = call i32 @_T(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0))
  %102 = call i32 @_ftprintf(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %90, %87
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %104, %58
  br label %106

106:                                              ; preds = %105, %33
  br label %107

107:                                              ; preds = %106, %5
  ret void
}

declare dso_local i32 @_ftprintf(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
