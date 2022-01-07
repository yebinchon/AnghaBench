; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packreq_number.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-cluster.c_packreq_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMP_LENGTH = common dso_local global i32 0, align 4
@MULTI_PART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32, i32)* @packreq_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packreq_number(i32* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @lua_tointeger(i32* %17, i32 1)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* @TEMP_LENGTH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MULTI_PART, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %5
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 9
  %31 = call i32 @fill_header(i32* %28, i32* %23, i32 %30)
  %32 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 0, i32* %32, align 8
  %33 = getelementptr inbounds i32, i32* %23, i64 3
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @fill_uint32(i32* %33, i32 %34)
  %36 = getelementptr inbounds i32, i32* %23, i64 7
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %42

40:                                               ; preds = %27
  %41 = load i32, i32* %8, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 0, %39 ], [ %41, %40 ]
  %44 = call i32 @fill_uint32(i32* %36, i32 %43)
  %45 = getelementptr inbounds i32, i32* %23, i64 11
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @memcpy(i32* %45, i8* %46, i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = bitcast i32* %23 to i8*
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 11
  %53 = call i32 @lua_pushlstring(i32* %49, i8* %50, i32 %52)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %80

54:                                               ; preds = %5
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @MULTI_PART, align 4
  %58 = sdiv i32 %56, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %16, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @fill_header(i32* %60, i32* %23, i32 13)
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 65, i32 1
  %66 = getelementptr inbounds i32, i32* %23, i64 2
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds i32, i32* %23, i64 3
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @fill_uint32(i32* %67, i32 %68)
  %70 = getelementptr inbounds i32, i32* %23, i64 7
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @fill_uint32(i32* %70, i32 %71)
  %73 = getelementptr inbounds i32, i32* %23, i64 11
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @fill_uint32(i32* %73, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = bitcast i32* %23 to i8*
  %78 = call i32 @lua_pushlstring(i32* %76, i8* %77, i32 15)
  %79 = load i32, i32* %16, align 4
  store i32 %79, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %80

80:                                               ; preds = %54, %42
  %81 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %81)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i64 @lua_tointeger(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fill_header(i32*, i32*, i32) #1

declare dso_local i32 @fill_uint32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
