; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_codestream.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_codestream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, i8*, i32)* @codestream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @codestream(i32* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @luaL_buffinit(i32* %15, i32* %11)
  br label %17

17:                                               ; preds = %54, %5
  %18 = load i64, i64* %8, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %17
  %21 = load i32, i32* @BLOCKSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @md5(i8* %25, i32 %26, i8* %24)
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %49, %20
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* @BLOCKSIZE, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i64, i64* %8, align 8
  %34 = icmp ugt i64 %33, 0
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi i1 [ false, %28 ], [ %34, %32 ]
  br i1 %36, label %37, label %54

37:                                               ; preds = %35
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %24, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = xor i32 %46, %41
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %14, align 4
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %8, align 8
  br label %28

54:                                               ; preds = %35
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @luaL_addlstring(i32* %11, i8* %24, i32 %55)
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @memcpy(i8* %57, i8* %24, i32 %58)
  %60 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %60)
  br label %17

61:                                               ; preds = %17
  %62 = call i32 @luaL_pushresult(i32* %11)
  ret void
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @md5(i8*, i32, i8*) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @luaL_pushresult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
