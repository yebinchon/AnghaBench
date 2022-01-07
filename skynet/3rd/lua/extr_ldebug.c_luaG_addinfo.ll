; ModuleID = '/home/carl/AnghaBench/skynet/3rd/lua/extr_ldebug.c_luaG_addinfo.c'
source_filename = "/home/carl/AnghaBench/skynet/3rd/lua/extr_ldebug.c_luaG_addinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_IDSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaG_addinfo(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @LUA_IDSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %9, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %10, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @getstr(i32* %18)
  %20 = load i32, i32* @LUA_IDSIZE, align 4
  %21 = call i32 @luaO_chunkid(i8* %14, i32 %19, i32 %20)
  br label %25

22:                                               ; preds = %4
  %23 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 63, i8* %23, align 16
  %24 = getelementptr inbounds i8, i8* %14, i64 1
  store i8 0, i8* %24, align 1
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i8* @luaO_pushfstring(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %27, i8* %28)
  %30 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %30)
  ret i8* %29
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @luaO_chunkid(i8*, i32, i32) #2

declare dso_local i32 @getstr(i32*) #2

declare dso_local i8* @luaO_pushfstring(i32*, i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
