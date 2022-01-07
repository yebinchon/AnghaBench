; ModuleID = '/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_istype.c'
source_filename = "/home/carl/AnghaBench/xLua/build/luajit-2.1.0b3/src/extr_lj_meta.c_lj_meta_istype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@LJ_DUALNUM = common dso_local global i64 0, align 8
@LJ_TNUMX = common dso_local global i32 0, align 4
@LJ_TSTR = common dso_local global i32 0, align 4
@lj_obj_itypename = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lj_meta_istype(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = call i32 @curr_topL(%struct.TYPE_8__* %7)
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @LJ_DUALNUM, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @LJ_TNUMX, align 4
  %20 = xor i32 %19, -1
  %21 = icmp ne i32 %18, %20
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i1 [ true, %3 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @lua_assert(i32 %24)
  %26 = load i64, i64* @LJ_DUALNUM, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LJ_TNUMX, align 4
  %31 = xor i32 %30, -1
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @lj_lib_checkint(%struct.TYPE_8__* %34, i32 %35)
  br label %67

37:                                               ; preds = %28, %22
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LJ_TNUMX, align 4
  %40 = xor i32 %39, -1
  %41 = add nsw i32 %40, 1
  %42 = icmp eq i32 %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @lj_lib_checknum(%struct.TYPE_8__* %44, i32 %45)
  br label %66

47:                                               ; preds = %37
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @LJ_TSTR, align 4
  %50 = xor i32 %49, -1
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @lj_lib_checkstr(%struct.TYPE_8__* %53, i32 %54)
  br label %65

56:                                               ; preds = %47
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32*, i32** @lj_obj_itypename, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @lj_err_argtype(%struct.TYPE_8__* %57, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %56, %52
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66, %33
  ret void
}

declare dso_local i32 @curr_topL(%struct.TYPE_8__*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @lj_lib_checkint(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lj_lib_checknum(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lj_lib_checkstr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @lj_err_argtype(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
