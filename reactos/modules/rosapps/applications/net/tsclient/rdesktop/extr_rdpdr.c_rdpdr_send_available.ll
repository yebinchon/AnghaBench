; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_send_available.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tsclient/rdesktop/extr_rdpdr.c_rdpdr_send_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i8*, i64 }
%struct.TYPE_13__ = type { i32, i8*, i32, i32, i32 }

@__const.rdpdr_send_available.magic = private unnamed_addr constant [4 x i8] c"rDAD", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @rdpdr_send_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rdpdr_send_available(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca [4 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = bitcast [4 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %10, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.rdpdr_send_available.magic, i32 0, i32 0), i64 4, i1 false)
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = call i32 @announcedata_size(%struct.TYPE_12__* %16)
  %18 = call i32 @channel_init(%struct.TYPE_12__* %11, i32 %15, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %3, i64 0, i64 0
  %21 = call i32 @out_uint8a(i32 %19, i8* %20, i32 4)
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @out_uint32_le(i32 %22, i32 %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %153, %1
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %156

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @out_uint32_le(i32 %34, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @out_uint32_le(i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @out_uint8p(i32 %47, i8* %55, i32 8)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  switch i32 %64, label %149 [
    i32 128, label %65
  ]

65:                                               ; preds = %33
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %9, align 8
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strlen(i32 %77)
  %79 = mul nsw i32 2, %78
  %80 = add nsw i32 %79, 2
  store i32 %80, i32* %4, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @strlen(i32 %83)
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %5, align 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 24, %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %94, %95
  %97 = call i32 @out_uint32_le(i32 %90, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 2, i32 0
  %105 = call i32 @out_uint32_le(i32 %98, i32 %104)
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @out_uint8s(i32 %106, i32 8)
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @out_uint32_le(i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @out_uint32_le(i32 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @out_uint32_le(i32 %114, i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, 2
  %124 = call i32 @rdp_out_unistr(%struct.TYPE_12__* %117, i32 %118, i32 %121, i32 %123)
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %130, 2
  %132 = call i32 @rdp_out_unistr(%struct.TYPE_12__* %125, i32 %126, i32 %129, i32 %131)
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @out_uint8a(i32 %133, i8* %136, i32 %137)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %148

143:                                              ; preds = %65
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @xfree(i8* %146)
  br label %148

148:                                              ; preds = %143, %65
  br label %152

149:                                              ; preds = %33
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @out_uint32(i32 %150, i32 0)
  br label %152

152:                                              ; preds = %149, %148
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  br label %27

156:                                              ; preds = %27
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @s_mark_end(i32 %157)
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @channel_send(%struct.TYPE_12__* %159, i32 %160, i32 %164)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @channel_init(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @announcedata_size(%struct.TYPE_12__*) #2

declare dso_local i32 @out_uint8a(i32, i8*, i32) #2

declare dso_local i32 @out_uint32_le(i32, i32) #2

declare dso_local i32 @out_uint8p(i32, i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @out_uint8s(i32, i32) #2

declare dso_local i32 @rdp_out_unistr(%struct.TYPE_12__*, i32, i32, i32) #2

declare dso_local i32 @xfree(i8*) #2

declare dso_local i32 @out_uint32(i32, i32) #2

declare dso_local i32 @s_mark_end(i32) #2

declare dso_local i32 @channel_send(%struct.TYPE_12__*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
