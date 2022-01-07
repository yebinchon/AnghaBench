; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_hotkeys.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_workshop_hotkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@workshopHotKeysEnabled = common dso_local global i64 0, align 8
@menuMap = common dso_local global %struct.TYPE_3__* null, align 8
@menuMapSize = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"map %s :wsverb %s<CR>\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"unmap %s\00", align 1
@WS_TRACE = common dso_local global i32 0, align 4
@WS_TRACE_VERBOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workshop_hotkeys(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @BUFSIZ, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i64, i64* %2, align 8
  store i64 %10, i64* @workshopHotKeysEnabled, align 8
  %11 = load i64, i64* @workshopHotKeysEnabled, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menuMap, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %5, align 8
  br label %15

15:                                               ; preds = %38, %13
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menuMap, align 8
  %18 = load i64, i64* @menuMapSize, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %18
  %20 = icmp ult %struct.TYPE_3__* %16, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = trunc i64 %7 to i32
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, i8*, i32*, ...) @vim_snprintf(i8* %9, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %30, i32 %33)
  %35 = load i32, i32* @TRUE, align 4
  %36 = call i32 @coloncmd(i8* %9, i32 %35)
  br label %37

37:                                               ; preds = %26, %21
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 1
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %5, align 8
  br label %15

41:                                               ; preds = %15
  br label %68

42:                                               ; preds = %1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menuMap, align 8
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %5, align 8
  br label %44

44:                                               ; preds = %64, %42
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** @menuMap, align 8
  %47 = load i64, i64* @menuMapSize, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %47
  %49 = icmp ult %struct.TYPE_3__* %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = trunc i64 %7 to i32
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 (i8*, i32, i8*, i32*, ...) @vim_snprintf(i8* %9, i32 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %59)
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @coloncmd(i8* %9, i32 %61)
  br label %63

63:                                               ; preds = %55, %50
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 1
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %5, align 8
  br label %44

67:                                               ; preds = %44
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %69)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i32*, ...) #2

declare dso_local i32 @coloncmd(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
