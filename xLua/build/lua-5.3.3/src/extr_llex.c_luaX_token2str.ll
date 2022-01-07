; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_llex.c_luaX_token2str.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.3.3/src/extr_llex.c_luaX_token2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@FIRST_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"'%c'\00", align 1
@luaX_tokens = common dso_local global i8** null, align 8
@TK_EOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"'%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaX_token2str(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FIRST_RESERVED, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @cast_uchar(i32 %12)
  %14 = icmp eq i32 %11, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @lua_assert(i32 %15)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i8* (i32, i8*, ...) @luaO_pushfstring(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i8* %21, i8** %3, align 8
  br label %41

22:                                               ; preds = %2
  %23 = load i8**, i8*** @luaX_tokens, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @FIRST_RESERVED, align 4
  %26 = sub nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %23, i64 %27
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TK_EOS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* (i32, i8*, ...) @luaO_pushfstring(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  store i8* %38, i8** %3, align 8
  br label %41

39:                                               ; preds = %22
  %40 = load i8*, i8** %6, align 8
  store i8* %40, i8** %3, align 8
  br label %41

41:                                               ; preds = %39, %33, %10
  %42 = load i8*, i8** %3, align 8
  ret i8* %42
}

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @cast_uchar(i32) #1

declare dso_local i8* @luaO_pushfstring(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
