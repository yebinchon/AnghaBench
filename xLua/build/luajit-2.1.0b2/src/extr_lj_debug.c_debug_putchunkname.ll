; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_debug.c_debug_putchunkname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_debug.c_debug_putchunkname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"[builtin:\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"[string]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32)* @debug_putchunkname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_putchunkname(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = call %struct.TYPE_8__* @proto_chunkname(%struct.TYPE_9__* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %8, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %15 = call i8* @strdata(%struct.TYPE_8__* %14)
  store i8* %15, i8** %9, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @lj_buf_putmem(i32* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %23 = load i32*, i32** %5, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = call i32 @lj_buf_putstr(i32* %23, %struct.TYPE_8__* %24)
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @lj_buf_putb(i32* %26, i8 signext 93)
  store i32 0, i32* %4, align 4
  br label %93

28:                                               ; preds = %3
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 61
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %89

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %84

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %80, %47
  %51 = load i32, i32* %11, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %50
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 47
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 92
  br i1 %68, label %69, label %79

69:                                               ; preds = %61, %53
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %10, align 4
  %73 = sub nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i8*, i8** %9, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  store i8* %78, i8** %9, align 8
  br label %83

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %11, align 4
  br label %50

83:                                               ; preds = %69, %50
  br label %84

84:                                               ; preds = %83, %38
  %85 = load i32*, i32** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @lj_buf_putmem(i32* %85, i8* %86, i32 %87)
  br label %92

89:                                               ; preds = %33
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @lj_buf_putmem(i32* %90, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %92

92:                                               ; preds = %89, %84
  store i32 1, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %20
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.TYPE_8__* @proto_chunkname(%struct.TYPE_9__*) #1

declare dso_local i8* @strdata(%struct.TYPE_8__*) #1

declare dso_local i32 @lj_buf_putmem(i32*, i8*, i32) #1

declare dso_local i32 @lj_buf_putstr(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @lj_buf_putb(i32*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
