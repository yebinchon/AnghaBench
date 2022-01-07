; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3LocateTableItem.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_build.c_sqlite3LocateTableItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.SrcList_item = type { i64, i8*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sqlite3LocateTableItem(%struct.TYPE_7__* %0, i32 %1, %struct.SrcList_item* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SrcList_item*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.SrcList_item* %2, %struct.SrcList_item** %6, align 8
  %9 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %10 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %15 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = icmp eq i8* %16, null
  br label %18

18:                                               ; preds = %13, %3
  %19 = phi i1 [ true, %3 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %23 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %18
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %31 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @sqlite3SchemaToIndex(%struct.TYPE_8__* %29, i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %7, align 8
  br label %48

44:                                               ; preds = %18
  %45 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %46 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %7, align 8
  br label %48

48:                                               ; preds = %44, %26
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.SrcList_item*, %struct.SrcList_item** %6, align 8
  %52 = getelementptr inbounds %struct.SrcList_item, %struct.SrcList_item* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = call i32* @sqlite3LocateTable(%struct.TYPE_7__* %49, i32 %50, i32 %53, i8* %54)
  ret i32* %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3SchemaToIndex(%struct.TYPE_8__*, i64) #1

declare dso_local i32* @sqlite3LocateTable(%struct.TYPE_7__*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
