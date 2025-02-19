; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_get_subtable.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/usp10/extr_opentype.c_GPOS_get_subtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32 }

@GPOS_LOOKUP_POSITION_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unhandled Extension Positioning Format %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_4__*, i32)* @GPOS_get_subtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @GPOS_get_subtable(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GET_BE_WORD(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GET_BE_WORD(i32 %17)
  %19 = load i32, i32* @GPOS_LOOKUP_POSITION_EXTENSION, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = bitcast %struct.TYPE_4__* %22 to i32*
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = bitcast i32* %26 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @GET_BE_WORD(i32 %30)
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %42

33:                                               ; preds = %21
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @GET_BE_DWORD(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %48

42:                                               ; preds = %21
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GET_BE_WORD(i32 %45)
  %47 = call i32 @FIXME(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %33
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = bitcast %struct.TYPE_4__* %50 to i32*
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  ret i32* %54
}

declare dso_local i32 @GET_BE_WORD(i32) #1

declare dso_local i64 @GET_BE_DWORD(i32) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
