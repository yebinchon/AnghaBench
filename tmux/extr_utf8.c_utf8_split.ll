; ModuleID = '/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_split.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_utf8.c_utf8_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utf8_data = type { i32, i32, i32 }

@MB_LEN_MAX = common dso_local global i32 0, align 4
@UTF8_ERROR = common dso_local global i32 0, align 4
@UTF8_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_split(i32 %0, %struct.utf8_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.utf8_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.utf8_data* %1, %struct.utf8_data** %5, align 8
  %10 = load i32, i32* @MB_LEN_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @wctomb(i8* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %2
  %22 = load i32, i32* @UTF8_ERROR, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %37

23:                                               ; preds = %18
  %24 = load %struct.utf8_data*, %struct.utf8_data** %5, align 8
  %25 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @memcpy(i32 %26, i8* %13, i32 %27)
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.utf8_data*, %struct.utf8_data** %5, align 8
  %31 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @utf8_width(i32 %32)
  %34 = load %struct.utf8_data*, %struct.utf8_data** %5, align 8
  %35 = getelementptr inbounds %struct.utf8_data, %struct.utf8_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @UTF8_DONE, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %23, %21
  %38 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %38)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wctomb(i8*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @utf8_width(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
