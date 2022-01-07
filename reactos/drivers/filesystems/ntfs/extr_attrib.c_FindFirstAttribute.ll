; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_FindFirstAttribute.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_attrib.c_FindFirstAttribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_14__*, i32*, i32*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"FindFistAttribute(%p, %p, %p, %p, %u, %p)\0A\00", align 1
@AttributeEnd = common dso_local global i64 0, align 8
@STATUS_END_OF_FILE = common dso_local global i32 0, align 4
@AttributeAttributeList = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FindFirstAttribute(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_16__* %2, i32 %3, %struct.TYPE_14__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_14__** %4, %struct.TYPE_14__*** %11, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %18 = call i32 @DPRINT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %13, i32 %14, %struct.TYPE_16__* %15, i32 %16, %struct.TYPE_14__** %17)
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %26 = ptrtoint %struct.TYPE_16__* %25 to i32
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %26, %29
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to %struct.TYPE_14__*
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  store %struct.TYPE_14__* %32, %struct.TYPE_14__** %34, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 1
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %39, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %41 = ptrtoint %struct.TYPE_16__* %40 to i32
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = inttoptr i64 %46 to %struct.TYPE_14__*
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  store %struct.TYPE_14__* %47, %struct.TYPE_14__** %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 4
  store i32* null, i32** %51, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AttributeEnd, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %5
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  store %struct.TYPE_14__* inttoptr (i64 -1 to %struct.TYPE_14__*), %struct.TYPE_14__** %68, align 8
  %69 = load i32, i32* @STATUS_END_OF_FILE, align 4
  store i32 %69, i32* %6, align 4
  br label %117

70:                                               ; preds = %5
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @AttributeAttributeList, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %70
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = call i32 @InternalReadNonResidentAttributes(%struct.TYPE_15__* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @NT_SUCCESS(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %12, align 4
  store i32 %85, i32* %6, align 4
  br label %117

86:                                               ; preds = %78
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = call %struct.TYPE_14__* @InternalGetNextAttribute(%struct.TYPE_15__* %87)
  %89 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %89, align 8
  %90 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = icmp eq %struct.TYPE_14__* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @STATUS_END_OF_FILE, align 4
  store i32 %94, i32* %6, align 4
  br label %117

95:                                               ; preds = %86
  br label %114

96:                                               ; preds = %70
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %98, align 8
  %100 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  store %struct.TYPE_14__* %99, %struct.TYPE_14__** %100, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = bitcast %struct.TYPE_14__* %103 to i32*
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %106 = bitcast %struct.TYPE_16__* %105 to i32*
  %107 = ptrtoint i32* %104 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = trunc i64 %110 to i32
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %96, %95
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %115, %93, %84, %66
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @DPRINT(i8*, %struct.TYPE_15__*, i32, %struct.TYPE_16__*, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @InternalReadNonResidentAttributes(%struct.TYPE_15__*) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local %struct.TYPE_14__* @InternalGetNextAttribute(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
