; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lsha1.c_lsha1.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lsha1.c_lsha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_DIGEST_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lsha1(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i64 0, i64* %3, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @luaL_checklstring(i32* %8, i32 1, i64* %3)
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = call i32 @sat_SHA1_Init(i32* %7)
  %16 = load i32*, i32** %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @sat_SHA1_Update(i32* %7, i32* %16, i64 %17)
  %19 = call i32 @sat_SHA1_Final(i32* %7, i32* %14)
  %20 = load i32*, i32** %2, align 8
  %21 = bitcast i32* %14 to i8*
  %22 = load i32, i32* @SHA1_DIGEST_SIZE, align 4
  %23 = call i32 @lua_pushlstring(i32* %20, i8* %21, i32 %22)
  %24 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %24)
  ret i32 1
}

declare dso_local i64 @luaL_checklstring(i32*, i32, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sat_SHA1_Init(i32*) #1

declare dso_local i32 @sat_SHA1_Update(i32*, i32*, i64) #1

declare dso_local i32 @sat_SHA1_Final(i32*, i32*) #1

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
