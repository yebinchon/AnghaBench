; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_compare_entry.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_compare_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, %union.ext_column* }
%union.ext_column = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 (%struct.TYPE_15__*, i64, i32, i64*)* }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @compare_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_entry(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.ext_column*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_13__**
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  store %struct.TYPE_13__* %18, %struct.TYPE_13__** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_13__**
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %7, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %8, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %26, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %9, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = icmp eq %struct.TYPE_12__* %30, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = icmp ne %struct.TYPE_14__* %37, null
  br i1 %38, label %39, label %146

39:                                               ; preds = %2
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %142, %39
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %41, %44
  br i1 %45, label %46, label %145

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load %union.ext_column*, %union.ext_column** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %union.ext_column, %union.ext_column* %49, i64 %50
  store %union.ext_column* %51, %union.ext_column** %15, align 8
  %52 = load %union.ext_column*, %union.ext_column** %15, align 8
  %53 = bitcast %union.ext_column* %52 to %struct.TYPE_11__*
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i64 (%struct.TYPE_15__*, i64, i32, i64*)*, i64 (%struct.TYPE_15__*, i64, i32, i64*)** %60, align 8
  %62 = load %union.ext_column*, %union.ext_column** %15, align 8
  %63 = bitcast %union.ext_column* %62 to %struct.TYPE_11__*
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load %union.ext_column*, %union.ext_column** %15, align 8
  %72 = bitcast %union.ext_column* %71 to %struct.TYPE_11__*
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i64, i64* %70, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load %union.ext_column*, %union.ext_column** %15, align 8
  %80 = bitcast %union.ext_column* %79 to %struct.TYPE_11__*
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i64 %61(%struct.TYPE_15__* %67, i64 %78, i32 %82, i64* %13)
  store i64 %83, i64* %12, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64, i64* @ERROR_SUCCESS, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %46
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  store i32 0, i32* %3, align 4
  br label %188

91:                                               ; preds = %46
  %92 = load %union.ext_column*, %union.ext_column** %15, align 8
  %93 = bitcast %union.ext_column* %92 to %struct.TYPE_11__*
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i64 (%struct.TYPE_15__*, i64, i32, i64*)*, i64 (%struct.TYPE_15__*, i64, i32, i64*)** %100, align 8
  %102 = load %union.ext_column*, %union.ext_column** %15, align 8
  %103 = bitcast %union.ext_column* %102 to %struct.TYPE_11__*
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = load %union.ext_column*, %union.ext_column** %15, align 8
  %112 = bitcast %union.ext_column* %111 to %struct.TYPE_11__*
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %110, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = load %union.ext_column*, %union.ext_column** %15, align 8
  %120 = bitcast %union.ext_column* %119 to %struct.TYPE_11__*
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 %101(%struct.TYPE_15__* %107, i64 %118, i32 %122, i64* %14)
  store i64 %123, i64* %12, align 8
  %124 = load i64, i64* %12, align 8
  %125 = load i64, i64* @ERROR_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %91
  %128 = load i64, i64* %12, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  store i64 %128, i64* %130, align 8
  store i32 0, i32* %3, align 4
  br label %188

131:                                              ; preds = %91
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* %14, align 8
  %138 = icmp ult i64 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 -1, i32 1
  store i32 %140, i32* %3, align 4
  br label %188

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %10, align 8
  br label %40

145:                                              ; preds = %40
  br label %146

146:                                              ; preds = %145, %2
  store i64 0, i64* %11, align 8
  br label %147

147:                                              ; preds = %184, %146
  %148 = load i64, i64* %11, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ult i64 %148, %151
  br i1 %152, label %153, label %187

153:                                              ; preds = %147
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i64, i64* %11, align 8
  %158 = getelementptr inbounds i64, i64* %156, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64*, i64** %161, align 8
  %163 = load i64, i64* %11, align 8
  %164 = getelementptr inbounds i64, i64* %162, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %159, %165
  br i1 %166, label %167, label %183

167:                                              ; preds = %153
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load i64, i64* %11, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = load i64, i64* %11, align 8
  %178 = getelementptr inbounds i64, i64* %176, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %173, %179
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 -1, i32 1
  store i32 %182, i32* %3, align 4
  br label %188

183:                                              ; preds = %153
  br label %184

184:                                              ; preds = %183
  %185 = load i64, i64* %11, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %11, align 8
  br label %147

187:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %188

188:                                              ; preds = %187, %167, %135, %127, %87
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
