; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateIndexBufferFromBTreeNode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/ntfs/extr_btree.c_CreateIndexBufferFromBTreeNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_16__*, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_13__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i64, i32 }

@NRH_INDX_TYPE = common dso_local global i32 0, align 4
@INDEX_BUFFER = common dso_local global i32 0, align 4
@Header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TODO: Adding file would require creating a new node!\0A\00", align 1
@STATUS_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"Index Node Entry Stream Length: %u\0AIndex Node Entry Length: %u\0A\00", align 1
@INDEX_NODE_LARGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateIndexBufferFromBTreeNode(i32 %0, %struct.TYPE_17__* %1, i64 %2, i64 %3, %struct.TYPE_15__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %11, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i32 @RtlZeroMemory(%struct.TYPE_15__* %17, i64 %18)
  %20 = load i32, i32* @NRH_INDX_TYPE, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  store i32 40, i32* %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  store i32 9, i32* %29, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  store i32 40, i32* %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* @INDEX_BUFFER, align 4
  %44 = load i32, i32* @Header, align 4
  %45 = call i64 @FIELD_OFFSET(i32 %43, i32 %44)
  %46 = sub nsw i64 %42, %45
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 3
  store i64 %46, i64* %49, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  store %struct.TYPE_16__* %59, %struct.TYPE_16__** %13, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 1
  %62 = ptrtoint %struct.TYPE_13__* %61 to i64
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %62, %67
  %69 = inttoptr i64 %68 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %14, align 8
  store i64 0, i64* %12, align 8
  br label %70

70:                                               ; preds = %150, %5
  %71 = load i64, i64* %12, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %153

76:                                               ; preds = %70
  %77 = load i32, i32* @INDEX_BUFFER, align 4
  %78 = load i32, i32* @Header, align 4
  %79 = call i64 @FIELD_OFFSET(i32 %77, i32 %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %79, %84
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  store i64 %89, i64* %16, align 8
  %90 = load i64, i64* %16, align 8
  %91 = load i64, i64* %9, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %76
  %94 = call i32 @DPRINT1(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @STATUS_NOT_IMPLEMENTED, align 4
  store i32 %95, i32* %6, align 4
  br label %159

96:                                               ; preds = %76
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i32
  %104 = call i32 @ASSERT(i32 %103)
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @RtlCopyMemory(%struct.TYPE_14__* %105, %struct.TYPE_18__* %108, i64 %113)
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %117, i64 %120)
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %124
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load i64, i64* %10, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %96
  %135 = load i32, i32* @INDEX_NODE_LARGE, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 2
  store i32 %135, i32* %138, align 8
  br label %139

139:                                              ; preds = %134, %96
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %141 = ptrtoint %struct.TYPE_14__* %140 to i64
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  %146 = inttoptr i64 %145 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %146, %struct.TYPE_14__** %14, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %148, align 8
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %13, align 8
  br label %150

150:                                              ; preds = %139
  %151 = load i64, i64* %12, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %12, align 8
  br label %70

153:                                              ; preds = %70
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = call i32 @AddFixupArray(i32 %154, %struct.TYPE_12__* %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %153, %93
  %160 = load i32, i32* %6, align 4
  ret i32 %160
}

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @FIELD_OFFSET(i32, i32) #1

declare dso_local i32 @DPRINT1(i8*) #1

declare dso_local i32 @RtlCopyMemory(%struct.TYPE_14__*, %struct.TYPE_18__*, i64) #1

declare dso_local i32 @DPRINT(i8*, i32, i64) #1

declare dso_local i32 @AddFixupArray(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
