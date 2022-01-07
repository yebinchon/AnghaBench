; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_set_row.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_where.c_WHERE_set_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tagMSIVIEW = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64 (%struct.TYPE_19__*, i64, i32*, i64*, i32*, i32*)*, i64 (%struct.TYPE_19__*, i64, %struct.TYPE_17__*, i64)* }

@.str = private unnamed_addr constant [15 x i8] c"%p %d %p %08x\0A\00", align 1
@ERROR_FUNCTION_FAILED = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@MSITYPE_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tagMSIVIEW*, i64, %struct.TYPE_17__*, i64)* @WHERE_set_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @WHERE_set_row(%struct.tagMSIVIEW* %0, i64 %1, %struct.TYPE_17__* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.tagMSIVIEW*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_17__*, align 8
  %21 = alloca i64, align 8
  store %struct.tagMSIVIEW* %0, %struct.tagMSIVIEW** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load %struct.tagMSIVIEW*, %struct.tagMSIVIEW** %6, align 8
  %23 = bitcast %struct.tagMSIVIEW* %22 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %10, align 8
  store i64 0, i64* %13, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %14, align 8
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %16, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @TRACE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %28, i64 %29, %struct.TYPE_17__* %30, i64 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = icmp ne %struct.TYPE_18__* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %4
  %38 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %38, i64* %5, align 8
  br label %210

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @find_row(%struct.TYPE_16__* %40, i64 %41, i64** %15)
  store i64 %42, i64* %12, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64, i64* @ERROR_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %12, align 8
  store i64 %47, i64* %5, align 8
  br label %210

48:                                               ; preds = %39
  %49 = load i64, i64* %9, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  %54 = sext i32 %53 to i64
  %55 = icmp sge i64 %49, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i64, i64* @ERROR_INVALID_PARAMETER, align 8
  store i64 %57, i64* %5, align 8
  br label %210

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %119, %58
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %102, %59
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %60
  %67 = load i64, i64* %16, align 8
  %68 = load i64, i64* %11, align 8
  %69 = trunc i64 %68 to i32
  %70 = shl i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = and i64 %67, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %66
  br label %102

75:                                               ; preds = %66
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64 (%struct.TYPE_19__*, i64, i32*, i64*, i32*, i32*)*, i64 (%struct.TYPE_19__*, i64, i32*, i64*, i32*, i32*)** %81, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, 1
  %88 = call i64 %82(%struct.TYPE_19__* %85, i64 %87, i32* null, i64* %17, i32* null, i32* null)
  store i64 %88, i64* %12, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load i64, i64* @ERROR_SUCCESS, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %75
  %93 = load i64, i64* %12, align 8
  store i64 %93, i64* %5, align 8
  br label %210

94:                                               ; preds = %75
  %95 = load i64, i64* %17, align 8
  %96 = load i64, i64* @MSITYPE_KEY, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %100, i64* %5, align 8
  br label %210

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %74
  %103 = load i64, i64* %11, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %11, align 8
  br label %60

105:                                              ; preds = %60
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %16, align 8
  %110 = ashr i64 %109, %108
  store i64 %110, i64* %16, align 8
  br label %111

111:                                              ; preds = %105
  %112 = load i64, i64* %16, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %116, align 8
  store %struct.TYPE_18__* %117, %struct.TYPE_18__** %14, align 8
  %118 = icmp ne %struct.TYPE_18__* %117, null
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi i1 [ false, %111 ], [ %118, %114 ]
  br i1 %120, label %59, label %121

121:                                              ; preds = %119
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  store %struct.TYPE_18__* %124, %struct.TYPE_18__** %14, align 8
  br label %125

125:                                              ; preds = %203, %121
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %18, align 8
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %13, align 8
  %131 = ashr i64 %129, %130
  %132 = load i64, i64* %18, align 8
  %133 = trunc i64 %132 to i32
  %134 = shl i32 1, %133
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = and i64 %131, %136
  store i64 %137, i64* %21, align 8
  %138 = load i64, i64* %21, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %125
  %141 = load i64, i64* %18, align 8
  %142 = load i64, i64* %13, align 8
  %143 = add nsw i64 %142, %141
  store i64 %143, i64* %13, align 8
  br label %203

144:                                              ; preds = %125
  %145 = load i64, i64* %18, align 8
  %146 = call %struct.TYPE_17__* @MSI_CreateRecord(i64 %145)
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %20, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %148 = icmp ne %struct.TYPE_17__* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = load i64, i64* @ERROR_FUNCTION_FAILED, align 8
  store i64 %150, i64* %5, align 8
  br label %210

151:                                              ; preds = %144
  store i64 1, i64* %19, align 8
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i64, i64* %19, align 8
  %154 = load i64, i64* %18, align 8
  %155 = icmp sle i64 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %158 = load i64, i64* %19, align 8
  %159 = load i64, i64* %13, align 8
  %160 = add nsw i64 %158, %159
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %162 = load i64, i64* %19, align 8
  %163 = call i64 @MSI_RecordCopyField(%struct.TYPE_17__* %157, i64 %160, %struct.TYPE_17__* %161, i64 %162)
  store i64 %163, i64* %12, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* @ERROR_SUCCESS, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %172

168:                                              ; preds = %156
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %19, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %19, align 8
  br label %152

172:                                              ; preds = %167, %152
  %173 = load i64, i64* %18, align 8
  %174 = load i64, i64* %13, align 8
  %175 = add nsw i64 %174, %173
  store i64 %175, i64* %13, align 8
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* @ERROR_SUCCESS, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %199

179:                                              ; preds = %172
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 1
  %186 = load i64 (%struct.TYPE_19__*, i64, %struct.TYPE_17__*, i64)*, i64 (%struct.TYPE_19__*, i64, %struct.TYPE_17__*, i64)** %185, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 2
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %188, align 8
  %190 = load i64*, i64** %15, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = getelementptr inbounds i64, i64* %190, i64 %193
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %197 = load i64, i64* %21, align 8
  %198 = call i64 %186(%struct.TYPE_19__* %189, i64 %195, %struct.TYPE_17__* %196, i64 %197)
  store i64 %198, i64* %12, align 8
  br label %199

199:                                              ; preds = %179, %172
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = call i32 @msiobj_release(i32* %201)
  br label %203

203:                                              ; preds = %199, %140
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 3
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  store %struct.TYPE_18__* %206, %struct.TYPE_18__** %14, align 8
  %207 = icmp ne %struct.TYPE_18__* %206, null
  br i1 %207, label %125, label %208

208:                                              ; preds = %203
  %209 = load i64, i64* %12, align 8
  store i64 %209, i64* %5, align 8
  br label %210

210:                                              ; preds = %208, %149, %99, %92, %56, %46, %37
  %211 = load i64, i64* %5, align 8
  ret i64 %211
}

declare dso_local i32 @TRACE(i8*, %struct.TYPE_16__*, i64, %struct.TYPE_17__*, i64) #1

declare dso_local i64 @find_row(%struct.TYPE_16__*, i64, i64**) #1

declare dso_local %struct.TYPE_17__* @MSI_CreateRecord(i64) #1

declare dso_local i64 @MSI_RecordCopyField(%struct.TYPE_17__*, i64, %struct.TYPE_17__*, i64) #1

declare dso_local i32 @msiobj_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
