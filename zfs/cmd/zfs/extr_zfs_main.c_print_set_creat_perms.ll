; ModuleID = '/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_print_set_creat_perms.c'
source_filename = "/home/carl/AnghaBench/zfs/cmd/zfs/extr_zfs_main.c_print_set_creat_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8*, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"Permission sets:\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Create time permissions:\0A\00", align 1
@B_TRUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%s \00", align 1
@B_FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_set_creat_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_set_creat_perms(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [3 x i8*], align 16
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %2, align 8
  %12 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 0
  %13 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  %15 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i8* %15, i8** %14, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %16, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %4, align 8
  store i32 -1, i32* %5, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call %struct.TYPE_10__* @uu_avl_first(i32* %17)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %4, align 8
  br label %19

19:                                               ; preds = %89, %1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %93

22:                                               ; preds = %19
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @who_type2weight(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* @B_TRUE, align 8
  store i64 %37, i64* %10, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %3, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %22
  %49 = load i8*, i8** %8, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @strnlen(i8* %52, i32 1)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %48
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %60

57:                                               ; preds = %51
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %55
  %61 = load i32*, i32** %6, align 8
  %62 = call %struct.TYPE_10__* @uu_avl_first(i32* %61)
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %11, align 8
  br label %63

63:                                               ; preds = %83, %60
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = load i64, i64* %10, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %73)
  %75 = load i64, i64* @B_FALSE, align 8
  store i64 %75, i64* %10, align 8
  br label %82

76:                                               ; preds = %66
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %76, %69
  br label %83

83:                                               ; preds = %82
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = call %struct.TYPE_10__* @uu_avl_next(i32* %84, %struct.TYPE_10__* %85)
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %11, align 8
  br label %63

87:                                               ; preds = %63
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87
  %90 = load i32*, i32** %2, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = call %struct.TYPE_10__* @uu_avl_next(i32* %90, %struct.TYPE_10__* %91)
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %4, align 8
  br label %19

93:                                               ; preds = %19
  ret void
}

declare dso_local i8* @gettext(i8*) #1

declare dso_local %struct.TYPE_10__* @uu_avl_first(i32*) #1

declare dso_local i32 @who_type2weight(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @strnlen(i8*, i32) #1

declare dso_local %struct.TYPE_10__* @uu_avl_next(i32*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
