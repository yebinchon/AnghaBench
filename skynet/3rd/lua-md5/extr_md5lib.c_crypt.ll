; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_crypt.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua-md5/extr_md5lib.c_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BLOCKSIZE = common dso_local global i64 0, align 8
@MAXKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"seed too long (> %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 1, i64* %3)
  store i8* %11, i8** %4, align 8
  %12 = load i64, i64* @BLOCKSIZE, align 8
  %13 = load i32, i32* @MAXKEY, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %12, %14
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @checkseed(i32* %18)
  %20 = load i32*, i32** %2, align 8
  %21 = call i8* @luaL_checklstring(i32* %20, i32 3, i64* %5)
  store i8* %21, i8** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @BLOCKSIZE, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32*, i32** %2, align 8
  %27 = load i64, i64* @BLOCKSIZE, align 8
  %28 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load i64, i64* %5, align 8
  %31 = trunc i64 %30 to i8
  %32 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 %31, i8* %32, align 16
  %33 = getelementptr inbounds i8, i8* %17, i64 1
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @memcpy(i8* %33, i8* %34, i64 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  %40 = call i32 @lua_pushlstring(i32* %37, i8* %17, i64 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @initblock(i32* %41, i8* %42, i64 %43, i8* %17)
  store i32 %44, i32* %7, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @codestream(i32* %45, i8* %46, i64 %47, i8* %17, i32 %48)
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 @lua_concat(i32* %50, i32 2)
  %52 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %52)
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @checkseed(i32*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i64) #1

declare dso_local i32 @initblock(i32*, i8*, i64, i8*) #1

declare dso_local i32 @codestream(i32*, i8*, i64, i8*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
