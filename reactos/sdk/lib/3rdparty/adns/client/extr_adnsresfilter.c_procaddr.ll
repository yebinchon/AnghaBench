; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_procaddr.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_procaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.treething = type { i64, i32*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.outqueuenode = type { i32, i32, %struct.treething*, i32*, i32* }
%struct.sockaddr = type { i32 }

@newthing = common dso_local global %struct.treething* null, align 8
@bytes = common dso_local global i32 0, align 4
@treeroot = common dso_local global i32 0, align 4
@comparer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tsearch\00", align 1
@sa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ads = common dso_local global i32 0, align 4
@rrt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"submit\00", align 1
@inbuf = common dso_local global i32 0, align 4
@addrtextbuf = common dso_local global i32 0, align 4
@printbefore = common dso_local global i32 0, align 4
@outqueue = common dso_local global i32 0, align 4
@outqueuelen = common dso_local global i32 0, align 4
@cbyte = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @procaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procaddr() #0 {
  %1 = alloca %struct.treething*, align 8
  %2 = alloca i8**, align 8
  %3 = alloca %struct.outqueuenode*, align 8
  %4 = alloca i32, align 4
  %5 = load %struct.treething*, %struct.treething** @newthing, align 8
  %6 = icmp ne %struct.treething* %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %0
  %8 = call i8* @xmalloc(i32 24)
  %9 = bitcast i8* %8 to %struct.treething*
  store %struct.treething* %9, %struct.treething** @newthing, align 8
  %10 = load %struct.treething*, %struct.treething** @newthing, align 8
  %11 = getelementptr inbounds %struct.treething, %struct.treething* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.treething*, %struct.treething** @newthing, align 8
  %13 = getelementptr inbounds %struct.treething, %struct.treething* %12, i32 0, i32 2
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %7, %0
  %15 = load %struct.treething*, %struct.treething** @newthing, align 8
  %16 = getelementptr inbounds %struct.treething, %struct.treething* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @bytes, align 4
  %19 = call i32 @memcpy(i32* %17, i32 %18, i32 4)
  %20 = load %struct.treething*, %struct.treething** @newthing, align 8
  %21 = load i32, i32* @comparer, align 4
  %22 = call i8** @tsearch(%struct.treething* %20, i32* @treeroot, i32 %21)
  store i8** %22, i8*** %2, align 8
  %23 = load i8**, i8*** %2, align 8
  %24 = icmp ne i8** %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %14
  %26 = call i32 @sysfail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %14
  %28 = load i8**, i8*** %2, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = bitcast i8* %29 to %struct.treething*
  store %struct.treething* %30, %struct.treething** %1, align 8
  %31 = load %struct.treething*, %struct.treething** %1, align 8
  %32 = load %struct.treething*, %struct.treething** @newthing, align 8
  %33 = icmp eq %struct.treething* %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  store %struct.treething* null, %struct.treething** @newthing, align 8
  %35 = load i32, i32* @bytes, align 4
  %36 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sa, i32 0, i32 0), i32 %35, i32 4)
  %37 = load i32, i32* @ads, align 4
  %38 = load i32, i32* @rrt, align 4
  %39 = load %struct.treething*, %struct.treething** %1, align 8
  %40 = load %struct.treething*, %struct.treething** %1, align 8
  %41 = getelementptr inbounds %struct.treething, %struct.treething* %40, i32 0, i32 0
  %42 = call i32 @adns_submit_reverse(i32 %37, %struct.sockaddr* bitcast (%struct.TYPE_2__* @sa to %struct.sockaddr*), i32 %38, i32 0, %struct.treething* %39, i64* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @adnsfail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %34
  br label %49

49:                                               ; preds = %48, %27
  %50 = call i8* @xmalloc(i32 32)
  %51 = bitcast i8* %50 to %struct.outqueuenode*
  store %struct.outqueuenode* %51, %struct.outqueuenode** %3, align 8
  %52 = load i32, i32* @inbuf, align 4
  %53 = call i8* @xmalloc(i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %56 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %55, i32 0, i32 4
  store i32* %54, i32** %56, align 8
  %57 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %58 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %61 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  %62 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %63 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @addrtextbuf, align 4
  %66 = load i32, i32* @inbuf, align 4
  %67 = call i32 @memcpy(i32* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @inbuf, align 4
  %69 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %70 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.treething*, %struct.treething** %1, align 8
  %72 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %73 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %72, i32 0, i32 2
  store %struct.treething* %71, %struct.treething** %73, align 8
  %74 = load i32, i32* @printbefore, align 4
  %75 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %76 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @outqueue, align 4
  %78 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %79 = call i32 @LIST_LINK_TAIL(i32 %77, %struct.outqueuenode* %78)
  %80 = load i32, i32* @outqueuelen, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @outqueuelen, align 4
  store i32 0, i32* @inbuf, align 4
  store i32 -1, i32* @cbyte, align 4
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8** @tsearch(%struct.treething*, i32*, i32) #1

declare dso_local i32 @sysfail(i8*) #1

declare dso_local i32 @adns_submit_reverse(i32, %struct.sockaddr*, i32, i32, %struct.treething*, i64*) #1

declare dso_local i32 @adnsfail(i8*, i32) #1

declare dso_local i32 @LIST_LINK_TAIL(i32, %struct.outqueuenode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
