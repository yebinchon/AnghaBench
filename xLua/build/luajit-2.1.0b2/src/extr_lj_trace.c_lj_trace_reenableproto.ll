; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_trace.c_lj_trace_reenableproto.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/extr_lj_trace.c_lj_trace_reenableproto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@PROTO_ILOOP = common dso_local global i32 0, align 4
@BC_IFUNCF = common dso_local global i64 0, align 8
@BC_FUNCF = common dso_local global i32 0, align 4
@BC_IFORL = common dso_local global i64 0, align 8
@BC_IITERL = common dso_local global i64 0, align 8
@BC_ILOOP = common dso_local global i64 0, align 8
@BC_LOOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_trace_reenableproto(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PROTO_ILOOP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %76

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = call i32* @proto_bc(%struct.TYPE_4__* %14)
  store i32* %15, i32** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* @PROTO_ILOOP, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @bc_op(i32 %27)
  %29 = load i64, i64* @BC_IFUNCF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %13
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* @BC_FUNCF, align 4
  %35 = call i32 @setbc_op(i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %13
  store i64 1, i64* %4, align 8
  br label %37

37:                                               ; preds = %72, %36
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %75

41:                                               ; preds = %37
  %42 = load i32*, i32** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @bc_op(i32 %45)
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @BC_IFORL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* @BC_IITERL, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @BC_ILOOP, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54, %50, %41
  %59 = load i32*, i32** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i64, i64* @BC_LOOP, align 8
  %65 = trunc i64 %64 to i32
  %66 = add nsw i32 %63, %65
  %67 = load i64, i64* @BC_ILOOP, align 8
  %68 = trunc i64 %67 to i32
  %69 = sub nsw i32 %66, %68
  %70 = call i32 @setbc_op(i32* %61, i32 %69)
  br label %71

71:                                               ; preds = %58, %54
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %37

75:                                               ; preds = %37
  br label %76

76:                                               ; preds = %75, %1
  ret void
}

declare dso_local i32* @proto_bc(%struct.TYPE_4__*) #1

declare dso_local i64 @bc_op(i32) #1

declare dso_local i32 @setbc_op(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
