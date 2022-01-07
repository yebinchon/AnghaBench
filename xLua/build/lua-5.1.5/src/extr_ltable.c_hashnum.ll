; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ltable.c_hashnum.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ltable.c_hashnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@numints = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @hashnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hashnum(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @numints, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @luai_numeq(i32 %14, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @gnode(i32* %18, i32 0)
  store i32* %19, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %44

20:                                               ; preds = %2
  %21 = mul nuw i64 4, %11
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memcpy(i32* %13, i32* %5, i32 %22)
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %36, %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @numints, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %13, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds i32, i32* %13, i64 0
  %34 = load i32, i32* %33, align 16
  %35 = add i32 %34, %32
  store i32 %35, i32* %33, align 16
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %24

39:                                               ; preds = %24
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %13, i64 0
  %42 = load i32, i32* %41, align 16
  %43 = call i32* @hashmod(i32* %40, i32 %42)
  store i32* %43, i32** %3, align 8
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @luai_numeq(i32, i32) #2

declare dso_local i32* @gnode(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32* @hashmod(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
