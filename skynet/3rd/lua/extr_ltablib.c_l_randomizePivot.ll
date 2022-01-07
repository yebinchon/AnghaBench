; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ltablib.c_l_randomizePivot.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ltablib.c_l_randomizePivot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @l_randomizePivot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l_randomizePivot() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32* (...) @clock()
  store i32* %7, i32** %1, align 8
  %8 = call i32* @time(i32* null)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @sof(i32* %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @sof(i32* %11)
  %13 = add i32 %10, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %3, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %17 = load i32*, i32** %1, align 8
  %18 = call i32 @sof(i32* %17)
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memcpy(i32* %16, i32** %1, i32 %21)
  %23 = load i32*, i32** %1, align 8
  %24 = call i32 @sof(i32* %23)
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %16, i64 %25
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @sof(i32* %27)
  %29 = zext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memcpy(i32* %26, i32** %2, i32 %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %44, %0
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @sof(i32* %16)
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %16, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

declare dso_local i32* @clock(...) #1

declare dso_local i32* @time(i32*) #1

declare dso_local i32 @sof(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32**, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
