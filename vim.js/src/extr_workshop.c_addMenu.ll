; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_workshop.c_addMenu.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_workshop.c_addMenu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32*, i32* }

@BUFSIZ = common dso_local global i32 0, align 4
@menuMapSize = common dso_local global i32 0, align 4
@menuMapMax = common dso_local global i32 0, align 4
@menuMap = common dso_local global %struct.TYPE_5__* null, align 8
@MENU_INC = common dso_local global i32 0, align 4
@workshopHotKeysEnabled = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"map %s :wsverb %s<CR>\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @addMenu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addMenu(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %8, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %9, align 8
  %14 = load i32, i32* @menuMapSize, align 4
  %15 = load i32, i32* @menuMapMax, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menuMap, align 8
  %19 = load i32, i32* @menuMapMax, align 4
  %20 = load i32, i32* @MENU_INC, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = mul i64 24, %22
  %24 = trunc i64 %23 to i32
  %25 = call %struct.TYPE_5__* @realloc(%struct.TYPE_5__* %18, i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %7, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %27 = icmp ne %struct.TYPE_5__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** @menuMap, align 8
  %30 = load i32, i32* @MENU_INC, align 4
  %31 = load i32, i32* @menuMapMax, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* @menuMapMax, align 4
  br label %33

33:                                               ; preds = %28, %17
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32, i32* @menuMapSize, align 4
  %36 = load i32, i32* @menuMapMax, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %34
  %39 = load i8*, i8** %4, align 8
  %40 = call i32* @strdup(i8* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menuMap, align 8
  %42 = load i32, i32* @menuMapSize, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  store i32* %40, i32** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i8*, i8** %5, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i8*, i8** %5, align 8
  %55 = call i32* @strdup(i8* %54)
  br label %57

56:                                               ; preds = %48, %38
  br label %57

57:                                               ; preds = %56, %53
  %58 = phi i32* [ %55, %53 ], [ null, %56 ]
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menuMap, align 8
  %60 = load i32, i32* @menuMapSize, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  store i32* %58, i32** %63, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32* @strdup(i8* %64)
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @menuMap, align 8
  %67 = load i32, i32* @menuMapSize, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* @menuMapSize, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i32* %65, i32** %71, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %57
  %75 = load i64, i64* @workshopHotKeysEnabled, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = trunc i64 %11 to i32
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @vim_snprintf(i8* %13, i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %79, i8* %80)
  %82 = load i32, i32* @TRUE, align 4
  %83 = call i32 @coloncmd(i8* %13, i32 %82)
  br label %84

84:                                               ; preds = %77, %74, %57
  br label %85

85:                                               ; preds = %84, %34
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_5__* @realloc(%struct.TYPE_5__*, i32) #2

declare dso_local i32* @strdup(i8*) #2

declare dso_local i32 @vim_snprintf(i8*, i32, i8*, i8*, i8*) #2

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
