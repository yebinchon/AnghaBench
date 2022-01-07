; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_sanitize.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_sanitize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i64, i32 }

@UTF8_MORE = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @utf8_sanitize(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.utf8_data, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %94, %64, %1
  %9 = load i8*, i8** %2, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %97

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %15, 1
  %17 = call i8* @xreallocarray(i8* %14, i64 %16, i32 1)
  store i8* %17, i8** %3, align 8
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = call i32 @utf8_open(%struct.utf8_data* %6, i8 signext %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @UTF8_MORE, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %13
  br label %24

24:                                               ; preds = %36, %23
  %25 = load i8*, i8** %2, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %2, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @UTF8_MORE, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %24
  %35 = phi i1 [ false, %24 ], [ %33, %30 ]
  br i1 %35, label %36, label %40

36:                                               ; preds = %34
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i32 @utf8_append(%struct.utf8_data* %6, i8 signext %38)
  store i32 %39, i32* %5, align 4
  br label %24

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @UTF8_DONE, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %46, %48
  %50 = call i8* @xreallocarray(i8* %45, i64 %49, i32 1)
  store i8* %50, i8** %3, align 8
  store i64 0, i64* %7, align 8
  br label %51

51:                                               ; preds = %61, %44
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %4, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 95, i8* %60, align 1
  br label %61

61:                                               ; preds = %56
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %51

64:                                               ; preds = %51
  br label %8

65:                                               ; preds = %40
  %66 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %6, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i8*, i8** %2, align 8
  %69 = sext i32 %67 to i64
  %70 = sub i64 0, %69
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8* %71, i8** %2, align 8
  br label %72

72:                                               ; preds = %65, %13
  %73 = load i8*, i8** %2, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sgt i32 %75, 31
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i8*, i8** %2, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp slt i32 %80, 127
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i8*, i8** %2, align 8
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %3, align 8
  %86 = load i64, i64* %4, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %4, align 8
  %88 = getelementptr inbounds i8, i8* %85, i64 %86
  store i8 %84, i8* %88, align 1
  br label %94

89:                                               ; preds = %77, %72
  %90 = load i8*, i8** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %4, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 95, i8* %93, align 1
  br label %94

94:                                               ; preds = %89, %82
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %2, align 8
  br label %8

97:                                               ; preds = %8
  %98 = load i8*, i8** %3, align 8
  %99 = load i64, i64* %4, align 8
  %100 = add i64 %99, 1
  %101 = call i8* @xreallocarray(i8* %98, i64 %100, i32 1)
  store i8* %101, i8** %3, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %3, align 8
  ret i8* %105
}

declare dso_local i8* @xreallocarray(i8*, i64, i32) #1

declare dso_local i32 @utf8_open(%struct.utf8_data*, i8 signext) #1

declare dso_local i32 @utf8_append(%struct.utf8_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
