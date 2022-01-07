; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_addloc.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_debug.c_lj_debug_addloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@LUA_IDSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s:%d: %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_debug_addloc(i32* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %49

16:                                               ; preds = %4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32* @frame_func(i32* %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i64 @isluafunc(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %48

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i64 @debug_frameline(i32* %23, i32* %24, i32* %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load i32*, i32** %9, align 8
  %31 = call %struct.TYPE_4__* @funcproto(i32* %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %11, align 8
  %32 = load i32, i32* @LUA_IDSIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %12, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %13, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = call i32 @proto_chunkname(%struct.TYPE_4__* %36)
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @lj_debug_shortname(i8* %35, i32 %37, i32 %40)
  %42 = load i32*, i32** %5, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 (i32*, i8*, i8*, ...) @lj_strfmt_pushf(i32* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %43, i8* %44)
  %46 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %46)
  br label %53

47:                                               ; preds = %22
  br label %48

48:                                               ; preds = %47, %16
  br label %49

49:                                               ; preds = %48, %4
  %50 = load i32*, i32** %5, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i32*, i8*, i8*, ...) @lj_strfmt_pushf(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %29
  ret void
}

declare dso_local i32* @frame_func(i32*) #1

declare dso_local i64 @isluafunc(i32*) #1

declare dso_local i64 @debug_frameline(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @funcproto(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @lj_debug_shortname(i8*, i32, i32) #1

declare dso_local i32 @proto_chunkname(%struct.TYPE_4__*) #1

declare dso_local i32 @lj_strfmt_pushf(i32*, i8*, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
