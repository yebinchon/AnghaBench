; ModuleID = '/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldebug.c_getfuncname.c'
source_filename = "/home/carl/AnghaBench/xLua/build/lua-5.1.5/src/extr_ldebug.c_getfuncname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@OP_CALL = common dso_local global i64 0, align 8
@OP_TAILCALL = common dso_local global i64 0, align 8
@OP_TFORLOOP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_12__*, i8**)* @getfuncname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getfuncname(i32* %0, %struct.TYPE_12__* %1, i8** %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %10 = call i64 @isLua(%struct.TYPE_12__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i64 -1
  %20 = call i64 @isLua(%struct.TYPE_12__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %12
  store i8* null, i8** %4, align 8
  br label %60

23:                                               ; preds = %17
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 -1
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %6, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = call %struct.TYPE_13__* @ci_func(%struct.TYPE_12__* %26)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = call i64 @currentpc(i32* %33, %struct.TYPE_12__* %34)
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i64 @GET_OPCODE(i32 %38)
  %40 = load i64, i64* @OP_CALL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @GET_OPCODE(i32 %43)
  %45 = load i64, i64* @OP_TAILCALL, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @GET_OPCODE(i32 %48)
  %50 = load i64, i64* @OP_TFORLOOP, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %47, %42, %23
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @GETARG_A(i32 %55)
  %57 = load i8**, i8*** %7, align 8
  %58 = call i8* @getobjname(i32* %53, %struct.TYPE_12__* %54, i32 %56, i8** %57)
  store i8* %58, i8** %4, align 8
  br label %60

59:                                               ; preds = %47
  store i8* null, i8** %4, align 8
  br label %60

60:                                               ; preds = %59, %52, %22
  %61 = load i8*, i8** %4, align 8
  ret i8* %61
}

declare dso_local i64 @isLua(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_13__* @ci_func(%struct.TYPE_12__*) #1

declare dso_local i64 @currentpc(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @GET_OPCODE(i32) #1

declare dso_local i8* @getobjname(i32*, %struct.TYPE_12__*, i32, i8**) #1

declare dso_local i32 @GETARG_A(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
