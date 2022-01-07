; ModuleID = '/home/carl/AnghaBench/zfs/module/zfs/extr_zcp.c_zcp_lua_counthook.c'
source_filename = "/home/carl/AnghaBench/zfs/module/zfs/extr_zcp.c_zcp_lua_counthook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i8*, i8*, i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@ZCP_RUN_INFO_KEY = common dso_local global i32 0, align 4
@JUSTLOOKING = common dso_local global i32 0, align 4
@FORREAL = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Channel program was canceled.\00", align 1
@zfs_lua_check_instrlimit_interval = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Channel program timed out.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @zcp_lua_counthook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zcp_lua_counthook(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %8 = load i32, i32* @ZCP_RUN_INFO_KEY, align 4
  %9 = call i32 @lua_getfield(i32* %6, i32 %7, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_3__* @lua_touserdata(i32* %10, i32 -1)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 3
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %29, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @JUSTLOOKING, align 4
  %23 = call i64 @issig(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* @FORREAL, align 4
  %27 = call i64 @issig(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %2
  %30 = load i8*, i8** @B_TRUE, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushstring(i32* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @lua_error(i32* %35)
  br label %37

37:                                               ; preds = %29, %25, %21, %16
  %38 = load i64, i64* @zfs_lua_check_instrlimit_interval, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = load i8*, i8** @B_TRUE, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_pushstring(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_error(i32* %61)
  br label %63

63:                                               ; preds = %55, %47, %37
  ret void
}

declare dso_local i32 @lua_getfield(i32*, i32, i32) #1

declare dso_local %struct.TYPE_3__* @lua_touserdata(i32*, i32) #1

declare dso_local i64 @issig(i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_error(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
