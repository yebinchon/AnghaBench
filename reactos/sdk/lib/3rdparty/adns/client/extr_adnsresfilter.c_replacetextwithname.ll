; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_replacetextwithname.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adnsresfilter.c_replacetextwithname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outqueuenode = type { i8*, i8*, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8** }

@address = common dso_local global i32 0, align 4
@bracket = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s%.*s\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s[%.*s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.outqueuenode*)* @replacetextwithname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replacetextwithname(%struct.outqueuenode* %0) #0 {
  %2 = alloca %struct.outqueuenode*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.outqueuenode* %0, %struct.outqueuenode** %2, align 8
  %7 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %8 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @address, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %23 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %27 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %26, i32 0, i32 0
  store i8* null, i8** %27, align 8
  %28 = load i8*, i8** %3, align 8
  %29 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %30 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %33 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  br label %73

34:                                               ; preds = %1
  %35 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %36 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i64, i64* @bracket, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 0, i32 2
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  %47 = call i8* @xmalloc(i32 %46)
  store i8* %47, i8** %4, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = load i64, i64* @bracket, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)
  %53 = load i8*, i8** %3, align 8
  %54 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %55 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %58 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @sprintf(i8* %48, i8* %52, i8* %53, i32 %56, i8* %59)
  %61 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %62 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i8*, i8** %4, align 8
  %66 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %67 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %69 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %68, i32 0, i32 0
  store i8* %65, i8** %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.outqueuenode*, %struct.outqueuenode** %2, align 8
  %72 = getelementptr inbounds %struct.outqueuenode, %struct.outqueuenode* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xmalloc(i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
