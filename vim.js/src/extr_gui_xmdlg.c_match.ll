; ModuleID = '/home/carl/AnghaBench/vim.js/src/extr_gui_xmdlg.c_match.c'
source_filename = "/home/carl/AnghaBench/vim.js/src/extr_gui_xmdlg.c_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32 }

@TEMP_BUF_SIZE = common dso_local global i32 0, align 4
@wild = common dso_local global i8* null, align 8
@True = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @TEMP_BUF_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i8**, i8*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8**, i8*** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** @wild, align 8
  %32 = call i32 @strcmp(i8* %30, i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %23, %3
  %35 = load i32, i32* @True, align 4
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %74

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %61 [
    i32 131, label %38
    i32 130, label %43
    i32 128, label %48
    i32 129, label %53
  ]

38:                                               ; preds = %36
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @fn(%struct.TYPE_4__* %39, i32 %40)
  %42 = call i32 @encoding_part(i32 %41, i8* %14)
  br label %62

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @fn(%struct.TYPE_4__* %44, i32 %45)
  %47 = call i32 @name_part(i32 %46, i8* %14)
  br label %62

48:                                               ; preds = %36
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @fn(%struct.TYPE_4__* %49, i32 %50)
  %52 = call i32 @style_part(i32 %51, i8* %14)
  br label %62

53:                                               ; preds = %36
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @fn(%struct.TYPE_4__* %54, i32 %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @size_part(i32 %56, i8* %14, i32 %59)
  br label %62

61:                                               ; preds = %36
  br label %62

62:                                               ; preds = %61, %53, %48, %43, %38
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8*, i8** %65, i64 %67
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @strcmp(i8* %14, i8* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %62, %34
  %75 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @encoding_part(i32, i8*) #2

declare dso_local i32 @fn(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @name_part(i32, i8*) #2

declare dso_local i32 @style_part(i32, i8*) #2

declare dso_local i32 @size_part(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
