; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_retstat.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b2/src/host/extr_minilua.c_retstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i8 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_19__ = type { i64 }

@VCALL = common dso_local global i64 0, align 8
@OP_TAILCALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*)* @retstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @retstat(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_19__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %7 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %9, %struct.TYPE_21__** %3, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = call i32 @luaX_next(%struct.TYPE_20__* %10)
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = call i64 @block_follow(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 8
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 59
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %66

26:                                               ; preds = %18
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = call i32 @explist1(%struct.TYPE_20__* %27, %struct.TYPE_19__* %4)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @hasmultret(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = call i32 @luaK_setmultret(%struct.TYPE_21__* %34, %struct.TYPE_19__* %4)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VCALL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = call i32 @getcode(%struct.TYPE_21__* %44, %struct.TYPE_19__* %4)
  %46 = load i32, i32* @OP_TAILCALL, align 4
  %47 = call i32 @SET_OPCODE(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %40, %33
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  br label %65

52:                                               ; preds = %26
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %57 = call i32 @luaK_exp2anyreg(%struct.TYPE_21__* %56, %struct.TYPE_19__* %4)
  store i32 %57, i32* %5, align 4
  br label %64

58:                                               ; preds = %52
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %60 = call i32 @luaK_exp2nextreg(%struct.TYPE_21__* %59, %struct.TYPE_19__* %4)
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %55
  br label %65

65:                                               ; preds = %64, %48
  br label %66

66:                                               ; preds = %65, %25
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @luaK_ret(%struct.TYPE_21__* %67, i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @luaX_next(%struct.TYPE_20__*) #1

declare dso_local i64 @block_follow(i8 signext) #1

declare dso_local i32 @explist1(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_setmultret(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SET_OPCODE(i32, i32) #1

declare dso_local i32 @getcode(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaK_exp2anyreg(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaK_ret(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
