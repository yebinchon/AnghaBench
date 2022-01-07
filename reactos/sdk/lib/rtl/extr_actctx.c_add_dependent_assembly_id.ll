; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_dependent_assembly_id.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_add_dependent_assembly_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.actctx_loader = type { i32, i32, %struct.assembly_identity*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.assembly_identity }
%struct.assembly_identity = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [62 x i8] c"reusing existing assembly for %S arch %S version %u.%u.%u.%u\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"reusing existing dependency for %S arch %S version %u.%u.%u.%u\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.actctx_loader*, %struct.assembly_identity*)* @add_dependent_assembly_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dependent_assembly_id(%struct.actctx_loader* %0, %struct.assembly_identity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.actctx_loader*, align 8
  %5 = alloca %struct.assembly_identity*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.actctx_loader* %0, %struct.actctx_loader** %4, align 8
  store %struct.assembly_identity* %1, %struct.assembly_identity** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %56, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %12 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %59

17:                                               ; preds = %9
  %18 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %19 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %20 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %19, i32 0, i32 3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i64 @is_matching_identity(%struct.assembly_identity* %18, %struct.assembly_identity* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %17
  %31 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %32 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %35 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %38 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %42 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %46 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %50 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DPRINT(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %40, i32 %44, i32 %48, i32 %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %3, align 4
  br label %166

55:                                               ; preds = %17
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %9

59:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %102, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %63 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %60
  %67 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %68 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %69 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %68, i32 0, i32 2
  %70 = load %struct.assembly_identity*, %struct.assembly_identity** %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %70, i64 %72
  %74 = call i64 @is_matching_identity(%struct.assembly_identity* %67, %struct.assembly_identity* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %101

76:                                               ; preds = %66
  %77 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %78 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %81 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %84 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %88 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %92 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %96 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @DPRINT(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i32 %86, i32 %90, i32 %94, i32 %98)
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %3, align 4
  br label %166

101:                                              ; preds = %66
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %6, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %6, align 4
  br label %60

105:                                              ; preds = %60
  %106 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %107 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %110 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %152

113:                                              ; preds = %105
  %114 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %115 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %114, i32 0, i32 2
  %116 = load %struct.assembly_identity*, %struct.assembly_identity** %115, align 8
  %117 = icmp ne %struct.assembly_identity* %116, null
  br i1 %117, label %118, label %132

118:                                              ; preds = %113
  %119 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %120 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 2
  store i32 %122, i32* %8, align 4
  %123 = call i32 (...) @RtlGetProcessHeap()
  %124 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %125 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %124, i32 0, i32 2
  %126 = load %struct.assembly_identity*, %struct.assembly_identity** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = mul i64 %128, 24
  %130 = trunc i64 %129 to i32
  %131 = call i8* @RtlReAllocateHeap(i32 %123, i32 0, %struct.assembly_identity* %126, i32 %130)
  store i8* %131, i8** %7, align 8
  br label %139

132:                                              ; preds = %113
  store i32 4, i32* %8, align 4
  %133 = call i32 (...) @RtlGetProcessHeap()
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = mul i64 %135, 24
  %137 = trunc i64 %136 to i32
  %138 = call i8* @RtlAllocateHeap(i32 %133, i32 0, i32 %137)
  store i8* %138, i8** %7, align 8
  br label %139

139:                                              ; preds = %132, %118
  %140 = load i8*, i8** %7, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* @FALSE, align 4
  store i32 %143, i32* %3, align 4
  br label %166

144:                                              ; preds = %139
  %145 = load i8*, i8** %7, align 8
  %146 = bitcast i8* %145 to %struct.assembly_identity*
  %147 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %148 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %147, i32 0, i32 2
  store %struct.assembly_identity* %146, %struct.assembly_identity** %148, align 8
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %151 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %144, %105
  %153 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %154 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %153, i32 0, i32 2
  %155 = load %struct.assembly_identity*, %struct.assembly_identity** %154, align 8
  %156 = load %struct.actctx_loader*, %struct.actctx_loader** %4, align 8
  %157 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add i32 %158, 1
  store i32 %159, i32* %157, align 8
  %160 = zext i32 %158 to i64
  %161 = getelementptr inbounds %struct.assembly_identity, %struct.assembly_identity* %155, i64 %160
  %162 = load %struct.assembly_identity*, %struct.assembly_identity** %5, align 8
  %163 = bitcast %struct.assembly_identity* %161 to i8*
  %164 = bitcast %struct.assembly_identity* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %163, i8* align 4 %164, i64 24, i1 false)
  %165 = load i32, i32* @TRUE, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %152, %142, %76, %30
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @is_matching_identity(%struct.assembly_identity*, %struct.assembly_identity*) #1

declare dso_local i32 @DPRINT(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @RtlReAllocateHeap(i32, i32, %struct.assembly_identity*, i32) #1

declare dso_local i32 @RtlGetProcessHeap(...) #1

declare dso_local i8* @RtlAllocateHeap(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
