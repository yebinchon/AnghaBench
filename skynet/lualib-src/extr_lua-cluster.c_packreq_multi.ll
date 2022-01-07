; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packreq_multi.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packreq_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMP_LENGTH = common dso_local global i32 0, align 4
@MULTI_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32)* @packreq_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @packreq_multi(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @TEMP_LENGTH, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* @MULTI_PART, align 4
  %22 = sdiv i32 %20, %21
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %11, align 4
  %24 = load i8*, i8** %7, align 8
  store i8* %24, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %25

25:                                               ; preds = %67, %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %70

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MULTI_PART, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @MULTI_PART, align 4
  store i32 %34, i32* %14, align 4
  %35 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 2, i32* %35, align 8
  br label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %14, align 4
  %38 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 3, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, 5
  %43 = call i32 @fill_header(i32* %40, i32* %18, i32 %42)
  %44 = getelementptr inbounds i32, i32* %18, i64 3
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @fill_uint32(i32* %44, i32 %45)
  %47 = getelementptr inbounds i32, i32* %18, i64 7
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @memcpy(i32* %47, i8* %48, i32 %49)
  %51 = load i32*, i32** %5, align 8
  %52 = bitcast i32* %18 to i8*
  %53 = load i32, i32* %14, align 4
  %54 = add nsw i32 %53, 7
  %55 = call i32 @lua_pushlstring(i32* %51, i8* %52, i32 %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  %59 = call i32 @lua_rawseti(i32* %56, i32 -2, i32 %58)
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i8*, i8** %13, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  store i8* %66, i8** %13, align 8
  br label %67

67:                                               ; preds = %39
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %25

70:                                               ; preds = %25
  %71 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %71)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fill_header(i32*, i32*, i32) #2

declare dso_local i32 @fill_uint32(i32*, i32) #2

declare dso_local i32 @memcpy(i32*, i8*, i32) #2

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #2

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
