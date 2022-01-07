; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_struct_fc.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/rpcrt4/extr_ndr_typelib.c_get_struct_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@FC_STRUCT = common dso_local global i8 0, align 1
@FC_BOGUS_ARRAY = common dso_local global i32 0, align 4
@FC_BOGUS_STRUCT = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [19 x i8] c"unhandled type %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32*, %struct.TYPE_13__*)* @get_struct_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @get_struct_fc(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %9 = load i8, i8* @FC_STRUCT, align 1
  store i8 %9, i8* %5, align 1
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %53, %2
  %11 = load i64, i64* %8, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %56

16:                                               ; preds = %10
  %17 = load i32*, i32** %3, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @ITypeInfo_GetVarDesc(i32* %17, i64 %18, %struct.TYPE_12__** %6)
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %40 [
    i32 128, label %26
  ]

26:                                               ; preds = %16
  %27 = load i32*, i32** %3, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = call i32 @get_array_fc(i32* %27, i32* %33)
  %35 = load i32, i32* @FC_BOGUS_ARRAY, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %26
  %38 = load i8, i8* @FC_BOGUS_STRUCT, align 1
  store i8 %38, i8* %5, align 1
  br label %39

39:                                               ; preds = %37, %26
  br label %49

40:                                               ; preds = %16
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @get_base_type(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @FIXME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i8, i8* @FC_BOGUS_STRUCT, align 1
  store i8 %47, i8* %5, align 1
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32*, i32** %3, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = call i32 @ITypeInfo_ReleaseVarDesc(i32* %50, %struct.TYPE_12__* %51)
  br label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %8, align 8
  br label %10

56:                                               ; preds = %10
  %57 = load i8, i8* %5, align 1
  ret i8 %57
}

declare dso_local i32 @ITypeInfo_GetVarDesc(i32*, i64, %struct.TYPE_12__**) #1

declare dso_local i32 @get_array_fc(i32*, i32*) #1

declare dso_local i32 @get_base_type(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @ITypeInfo_ReleaseVarDesc(i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
