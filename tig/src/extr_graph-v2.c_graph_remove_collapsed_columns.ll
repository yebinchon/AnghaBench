; ModuleID = '/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_remove_collapsed_columns.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_graph-v2.c_graph_remove_collapsed_columns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.graph_v2 = type { i32, i64, %struct.TYPE_6__, i32, %struct.graph_row }
%struct.TYPE_6__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.graph_row = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.graph_v2*)* @graph_remove_collapsed_columns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @graph_remove_collapsed_columns(%struct.graph_v2* %0) #0 {
  %2 = alloca %struct.graph_v2*, align 8
  %3 = alloca %struct.graph_row*, align 8
  %4 = alloca i32, align 4
  store %struct.graph_v2* %0, %struct.graph_v2** %2, align 8
  %5 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %6 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %5, i32 0, i32 4
  store %struct.graph_row* %6, %struct.graph_row** %3, align 8
  %7 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %8 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %154, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %157

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %17 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %154

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %24 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %154

29:                                               ; preds = %21
  %30 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %31 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %39 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %29
  br label %154

43:                                               ; preds = %29
  %44 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %45 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %44, i32 0, i32 1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %53 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %51, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %43
  br label %154

63:                                               ; preds = %43
  %64 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %65 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %73 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %72, i32 0, i32 3
  %74 = call i64 @commit_is_in_row(i64 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %63
  %77 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %78 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = call i32 @graph_column_has_commit(%struct.TYPE_8__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  br label %154

87:                                               ; preds = %76, %63
  %88 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %89 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %98 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %96, %106
  br i1 %107, label %121, label %108

108:                                              ; preds = %87
  %109 = load %struct.graph_v2*, %struct.graph_v2** %2, align 8
  %110 = getelementptr inbounds %struct.graph_v2, %struct.graph_v2* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %153

121:                                              ; preds = %108, %87
  %122 = load i32, i32* %4, align 4
  %123 = add nsw i32 %122, 1
  %124 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %125 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %121
  %129 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %130 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = call i32 @memset(%struct.TYPE_7__* %134, i32 0, i32 8)
  br label %152

136:                                              ; preds = %121
  %137 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %138 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %137, i32 0, i32 1
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 %141
  %143 = load %struct.graph_row*, %struct.graph_row** %3, align 8
  %144 = getelementptr inbounds %struct.graph_row, %struct.graph_row* %143, i32 0, i32 1
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i64 %148
  %150 = bitcast %struct.TYPE_7__* %142 to i8*
  %151 = bitcast %struct.TYPE_7__* %149 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %150, i8* align 8 %151, i64 8, i1 false)
  br label %152

152:                                              ; preds = %136, %128
  br label %153

153:                                              ; preds = %152, %108
  br label %154

154:                                              ; preds = %153, %86, %62, %42, %28, %20
  %155 = load i32, i32* %4, align 4
  %156 = add nsw i32 %155, -1
  store i32 %156, i32* %4, align 4
  br label %11

157:                                              ; preds = %11
  ret void
}

declare dso_local i64 @commit_is_in_row(i64, i32*) #1

declare dso_local i32 @graph_column_has_commit(%struct.TYPE_8__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
