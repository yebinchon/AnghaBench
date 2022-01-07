; ModuleID = '/home/carl/AnghaBench/redis/deps/lua/src/extr_lparser.c_retstat.c'
source_filename = "/home/carl/AnghaBench/redis/deps/lua/src/extr_lparser.c_retstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i8 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64 }

@VCALL = common dso_local global i64 0, align 8
@OP_TAILCALL = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
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
  br label %85

26:                                               ; preds = %18
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = call i32 @explist1(%struct.TYPE_20__* %27, %struct.TYPE_19__* %4)
  store i32 %28, i32* %6, align 4
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @hasmultret(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %35 = call i32 @luaK_setmultret(%struct.TYPE_21__* %34, %struct.TYPE_19__* %4)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %4, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VCALL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %45 = call i32 @getcode(%struct.TYPE_21__* %44, %struct.TYPE_19__* %4)
  %46 = load i32, i32* @OP_TAILCALL, align 4
  %47 = call i32 @SET_OPCODE(i32 %45, i32 %46)
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %49 = call i32 @getcode(%struct.TYPE_21__* %48, %struct.TYPE_19__* %4)
  %50 = call i32 @GETARG_A(i32 %49)
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @lua_assert(i32 %55)
  br label %57

57:                                               ; preds = %43, %40, %33
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @LUA_MULTRET, align 4
  store i32 %61, i32* %6, align 4
  br label %84

62:                                               ; preds = %26
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %67 = call i32 @luaK_exp2anyreg(%struct.TYPE_21__* %66, %struct.TYPE_19__* %4)
  store i32 %67, i32* %5, align 4
  br label %83

68:                                               ; preds = %62
  %69 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %70 = call i32 @luaK_exp2nextreg(%struct.TYPE_21__* %69, %struct.TYPE_19__* %4)
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp eq i32 %74, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @lua_assert(i32 %81)
  br label %83

83:                                               ; preds = %68, %65
  br label %84

84:                                               ; preds = %83, %57
  br label %85

85:                                               ; preds = %84, %25
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @luaK_ret(%struct.TYPE_21__* %86, i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @luaX_next(%struct.TYPE_20__*) #1

declare dso_local i64 @block_follow(i8 signext) #1

declare dso_local i32 @explist1(%struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i64 @hasmultret(i64) #1

declare dso_local i32 @luaK_setmultret(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SET_OPCODE(i32, i32) #1

declare dso_local i32 @getcode(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @luaK_exp2anyreg(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaK_exp2nextreg(%struct.TYPE_21__*, %struct.TYPE_19__*) #1

declare dso_local i32 @luaK_ret(%struct.TYPE_21__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
