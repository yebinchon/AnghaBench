; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_list.c_xmlListLinkSearch.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/libxml2/extr_list.c_xmlListLinkSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 (i32, i8*)*, %struct.TYPE_8__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i8*)* @xmlListLinkSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @xmlListLinkSearch(%struct.TYPE_7__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %8 = icmp eq %struct.TYPE_7__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call %struct.TYPE_8__* @xmlListLowerSearch(%struct.TYPE_7__* %11, i8* %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %6, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp eq %struct.TYPE_8__* %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %33

20:                                               ; preds = %10
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64 (i32, i8*)*, i64 (i32, i8*)** %22, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 %23(i32 %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %31, %struct.TYPE_8__** %3, align 8
  br label %33

32:                                               ; preds = %20
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %3, align 8
  br label %33

33:                                               ; preds = %32, %30, %19, %9
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  ret %struct.TYPE_8__* %34
}

declare dso_local %struct.TYPE_8__* @xmlListLowerSearch(%struct.TYPE_7__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
