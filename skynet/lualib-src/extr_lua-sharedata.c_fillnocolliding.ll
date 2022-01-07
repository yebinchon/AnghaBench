; ModuleID = '/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_fillnocolliding.c'
source_filename = "/home/carl/AnghaBench/skynet/lualib-src/extr_lua-sharedata.c_fillnocolliding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.table* }
%struct.table = type { i64, %struct.node* }
%struct.node = type { i64, i32, i32, i64, i32, i32 }

@VALUETYPE_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.context*)* @fillnocolliding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fillnocolliding(i32* %0, %struct.context* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.context*, align 8
  %5 = alloca %struct.table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.node*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.context* %1, %struct.context** %4, align 8
  %10 = load %struct.context*, %struct.context** %4, align 8
  %11 = getelementptr inbounds %struct.context, %struct.context* %10, i32 0, i32 0
  %12 = load %struct.table*, %struct.table** %11, align 8
  store %struct.table* %12, %struct.table** %5, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_pushnil(i32* %13)
  br label %15

15:                                               ; preds = %63, %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @lua_next(i32* %16, i32 1)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %15
  %20 = load %struct.context*, %struct.context** %4, align 8
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @ishashkey(%struct.context* %20, i32* %21, i32 -2, i32* %6, i64* %8, i32* %7)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.context*, %struct.context** %4, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @setarray(%struct.context* %25, i32* %26, i32 -1, i32 %27)
  br label %63

29:                                               ; preds = %19
  %30 = load %struct.table*, %struct.table** %5, align 8
  %31 = getelementptr inbounds %struct.table, %struct.table* %30, i32 0, i32 1
  %32 = load %struct.node*, %struct.node** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.table*, %struct.table** %5, align 8
  %35 = getelementptr inbounds %struct.table, %struct.table* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = urem i64 %33, %36
  %38 = getelementptr inbounds %struct.node, %struct.node* %32, i64 %37
  store %struct.node* %38, %struct.node** %9, align 8
  %39 = load %struct.node*, %struct.node** %9, align 8
  %40 = getelementptr inbounds %struct.node, %struct.node* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VALUETYPE_NIL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %29
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.node*, %struct.node** %9, align 8
  %47 = getelementptr inbounds %struct.node, %struct.node* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.node*, %struct.node** %9, align 8
  %50 = getelementptr inbounds %struct.node, %struct.node* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.node*, %struct.node** %9, align 8
  %53 = getelementptr inbounds %struct.node, %struct.node* %52, i32 0, i32 3
  store i64 %51, i64* %53, align 8
  %54 = load %struct.node*, %struct.node** %9, align 8
  %55 = getelementptr inbounds %struct.node, %struct.node* %54, i32 0, i32 4
  store i32 -1, i32* %55, align 8
  %56 = load %struct.node*, %struct.node** %9, align 8
  %57 = getelementptr inbounds %struct.node, %struct.node* %56, i32 0, i32 5
  store i32 1, i32* %57, align 4
  %58 = load %struct.context*, %struct.context** %4, align 8
  %59 = load i32*, i32** %3, align 8
  %60 = load %struct.node*, %struct.node** %9, align 8
  %61 = call i32 @setvalue(%struct.context* %58, i32* %59, i32 -1, %struct.node* %60)
  br label %62

62:                                               ; preds = %44, %29
  br label %63

63:                                               ; preds = %62, %24
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @lua_pop(i32* %64, i32 1)
  br label %15

66:                                               ; preds = %15
  ret void
}

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i32 @ishashkey(%struct.context*, i32*, i32, i32*, i64*, i32*) #1

declare dso_local i32 @setarray(%struct.context*, i32*, i32, i32) #1

declare dso_local i32 @setvalue(%struct.context*, i32*, i32, %struct.node*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
