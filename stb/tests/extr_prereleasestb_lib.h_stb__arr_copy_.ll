; ModuleID = '/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__arr_copy_.c'
source_filename = "/home/carl/AnghaBench/stb/tests/extr_prereleasestb_lib.h_stb__arr_copy_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @stb__arr_copy_(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %3, align 8
  br label %40

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call %struct.TYPE_3__* @stb_arrhead2(i8* %13)
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = sext i32 %17 to i64
  %19 = add i64 1, %18
  %20 = trunc i64 %19 to i32
  %21 = call i64 @malloc(i32 %20)
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @stb_arr_check2(i8* %23)
  %25 = load i8*, i8** %6, align 8
  %26 = load i8*, i8** %4, align 8
  %27 = call %struct.TYPE_3__* @stb_arrhead2(i8* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call %struct.TYPE_3__* @stb_arrhead2(i8* %29)
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %28, %32
  %34 = sext i32 %33 to i64
  %35 = add i64 1, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcpy(i8* %25, %struct.TYPE_3__* %27, i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr i8, i8* %38, i64 1
  store i8* %39, i8** %3, align 8
  br label %40

40:                                               ; preds = %11, %9
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_3__* @stb_arrhead2(i8*) #1

declare dso_local i32 @stb_arr_check2(i8*) #1

declare dso_local i32 @memcpy(i8*, %struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
