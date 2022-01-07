; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_SDTCallBack.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_SDTCallBack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_21__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_21__** }
%struct.TYPE_21__ = type { i64, i64, i64, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_23__*, i32, i32, i32, i32, i32, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_20__ = type { i64, i32, i32 }

@SDT_OTHER_TS_TABLE_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [61 x i8] c"new SDT %s ts_id=%d version=%d current_next=%d network_id=%d\00", align 1
@SDT_CURRENT_TS_TABLE_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"  * service id=%d eit schedule=%d present=%d running=%d free_ca=%d\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"    - type=%d name=%s\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"    * dsc 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_21__*)* @SDTCallBack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SDTCallBack(%struct.TYPE_19__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca %struct.TYPE_21__**, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca [257 x i8], align 16
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %12 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  store %struct.TYPE_21__** null, %struct.TYPE_21__*** %6, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SDT_OTHER_TS_TABLE_ID, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %2
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GetOtherTsSDT(%struct.TYPE_19__* %21, i32 %24, %struct.TYPE_21__*** %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %63, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %30, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 8
  %39 = trunc i64 %38 to i32
  %40 = call %struct.TYPE_21__** @realloc(%struct.TYPE_21__** %31, i32 %39)
  store %struct.TYPE_21__** %40, %struct.TYPE_21__*** %7, align 8
  %41 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %42 = icmp ne %struct.TYPE_21__** %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %27
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %45 = call i32 @dvbpsi_sdt_delete(%struct.TYPE_21__* %44)
  br label %197

46:                                               ; preds = %27
  %47 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %47, i64 %52
  store %struct.TYPE_21__** %53, %struct.TYPE_21__*** %6, align 8
  %54 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %7, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %56, i32 0, i32 1
  store %struct.TYPE_21__** %54, %struct.TYPE_21__*** %57, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %46, %20
  br label %68

64:                                               ; preds = %2
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store %struct.TYPE_21__** %67, %struct.TYPE_21__*** %6, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %69, align 8
  %71 = icmp ne %struct.TYPE_21__* %70, null
  br i1 %71, label %72, label %97

72:                                               ; preds = %68
  %73 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %90, label %81

81:                                               ; preds = %72
  %82 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %81, %72
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %92 = call i32 @dvbpsi_sdt_delete(%struct.TYPE_21__* %91)
  br label %197

93:                                               ; preds = %81
  %94 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %94, align 8
  %96 = call i32 @dvbpsi_sdt_delete(%struct.TYPE_21__* %95)
  br label %97

97:                                               ; preds = %93, %68
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %99 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  store %struct.TYPE_21__* %98, %struct.TYPE_21__** %99, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SDT_CURRENT_TS_TABLE_ID, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %100, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %110, i64 %113, i64 %116, i32 %119)
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  store %struct.TYPE_22__* %123, %struct.TYPE_22__** %8, align 8
  br label %124

124:                                              ; preds = %193, %97
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %126 = icmp ne %struct.TYPE_22__* %125, null
  br i1 %126, label %127, label %197

127:                                              ; preds = %124
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %128, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %131, i32 %134, i32 %137, i32 %140, i32 %143)
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %146, align 8
  store %struct.TYPE_23__* %147, %struct.TYPE_23__** %9, align 8
  br label %148

148:                                              ; preds = %188, %127
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %150 = icmp ne %struct.TYPE_23__* %149, null
  br i1 %150, label %151, label %192

151:                                              ; preds = %148
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp eq i32 %154, 72
  br i1 %155, label %156, label %181

156:                                              ; preds = %151
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %158 = call %struct.TYPE_20__* @dvbpsi_DecodeServiceDr(%struct.TYPE_23__* %157)
  store %struct.TYPE_20__* %158, %struct.TYPE_20__** %10, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %160 = icmp ne %struct.TYPE_20__* %159, null
  br i1 %160, label %161, label %180

161:                                              ; preds = %156
  %162 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @memcpy(i8* %162, i32 %165, i64 %168)
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 %172
  store i8 0, i8* %173, align 1
  %174 = load i32*, i32** %5, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = getelementptr inbounds [257 x i8], [257 x i8]* %11, i64 0, i64 0
  %179 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %174, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %177, i8* %178)
  br label %180

180:                                              ; preds = %161, %156
  br label %187

181:                                              ; preds = %151
  %182 = load i32*, i32** %5, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %182, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %181, %180
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %190, align 8
  store %struct.TYPE_23__* %191, %struct.TYPE_23__** %9, align 8
  br label %148

192:                                              ; preds = %148
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %195, align 8
  store %struct.TYPE_22__* %196, %struct.TYPE_22__** %8, align 8
  br label %124

197:                                              ; preds = %43, %90, %124
  ret void
}

declare dso_local i32 @GetOtherTsSDT(%struct.TYPE_19__*, i32, %struct.TYPE_21__***) #1

declare dso_local %struct.TYPE_21__** @realloc(%struct.TYPE_21__**, i32) #1

declare dso_local i32 @dvbpsi_sdt_delete(%struct.TYPE_21__*) #1

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #1

declare dso_local %struct.TYPE_20__* @dvbpsi_DecodeServiceDr(%struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
