; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_GUIDFromString.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/oleaut32/extr_typelib.c_TLB_GUIDFromString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%x-%hx-%hx-%hx\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't parse guid %s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_4__*)* @TLB_GUIDFromString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @TLB_GUIDFromString(i8* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = call i32 @sscanf(i8* %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %11, i32* %13, i32* %15, i16* %8)
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %20 = call i32 @debugstr_guid(%struct.TYPE_4__* %19)
  %21 = call i32 @FIXME(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load i16, i16* %8, align 2
  %25 = sext i16 %24 to i32
  %26 = ashr i32 %25, 8
  %27 = trunc i32 %26 to i16
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i16*, i16** %29, align 8
  %31 = getelementptr inbounds i16, i16* %30, i64 0
  store i16 %27, i16* %31, align 2
  %32 = load i16, i16* %8, align 2
  %33 = sext i16 %32 to i32
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i16
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i16*, i16** %37, align 8
  %39 = getelementptr inbounds i16, i16* %38, i64 1
  store i16 %35, i16* %39, align 2
  %40 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 2
  store i8 0, i8* %40, align 1
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %62, %23
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 24
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = call i32 @memcpy(i8* %45, i8* %51, i32 2)
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %6, i64 0, i64 0
  %54 = call signext i16 @strtol(i8* %53, i32* null, i32 16)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i16*, i16** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %57, i64 %60
  store i16 %54, i16* %61, align 2
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load i32, i32* @TRUE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i16*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

declare dso_local i32 @debugstr_guid(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i16 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
