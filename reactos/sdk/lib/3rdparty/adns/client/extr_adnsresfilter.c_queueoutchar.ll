; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_queueoutchar.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_queueoutchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.outqueuenode* }
%struct.outqueuenode = type { i32, i32*, i32*, i64 }

@outqueue = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@peroutqueuenode = common dso_local global i32 0, align 4
@outqueuelen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @queueoutchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queueoutchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.outqueuenode*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.outqueuenode*, %struct.outqueuenode** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @outqueue, i32 0, i32 0), align 8
  store %struct.outqueuenode* %4, %struct.outqueuenode** %3, align 8
  %5 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %6 = icmp ne %struct.outqueuenode* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %9 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %14 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @peroutqueuenode, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %62

18:                                               ; preds = %12, %7, %1
  %19 = load i32, i32* @peroutqueuenode, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %23 = icmp ne %struct.outqueuenode* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %26 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %21, %18
  br label %39

30:                                               ; preds = %24
  %31 = load i32, i32* @peroutqueuenode, align 4
  %32 = icmp sge i32 %31, 1024
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @peroutqueuenode, align 4
  %36 = shl i32 %35, 2
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 4096, %33 ], [ %36, %34 ]
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi i32 [ 128, %29 ], [ %38, %37 ]
  store i32 %40, i32* @peroutqueuenode, align 4
  %41 = call i8* @xmalloc(i32 32)
  %42 = bitcast i8* %41 to %struct.outqueuenode*
  store %struct.outqueuenode* %42, %struct.outqueuenode** %3, align 8
  %43 = load i32, i32* @peroutqueuenode, align 4
  %44 = call i8* @xmalloc(i32 %43)
  %45 = bitcast i8* %44 to i32*
  %46 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %47 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %49 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %52 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %54 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %56 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %58 = load %struct.outqueuenode*, %struct.outqueuenode** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @outqueue, i32 0, i32 0), align 8
  %59 = call i32 @LIST_LINK_TAIL(%struct.outqueuenode* %58, %struct.outqueuenode* %57)
  %60 = load i32, i32* @outqueuelen, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @outqueuelen, align 4
  br label %62

62:                                               ; preds = %39, %12
  %63 = load i32, i32* %2, align 4
  %64 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %65 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.outqueuenode*, %struct.outqueuenode** %3, align 8
  %68 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %66, i64 %71
  store i32 %63, i32* %72, align 4
  ret void
}

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @LIST_LINK_TAIL(%struct.outqueuenode*, %struct.outqueuenode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
