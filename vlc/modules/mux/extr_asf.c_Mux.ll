; ModuleID = '/home/carl/AnghaBench/vlc/modules/mux/extr_asf.c_Mux.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/mux/extr_asf.c_Mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_18__**, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i64, i64 }
%struct.TYPE_19__ = type { i32, i32*, i32 }
%struct.TYPE_20__ = type { i64 }

@BLOCK_FLAG_HEADER = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @Mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Mux(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %3, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %20 = call %struct.TYPE_19__* @asf_header_create(%struct.TYPE_16__* %19, i32 1)
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %4, align 8
  %21 = load i32, i32* @BLOCK_FLAG_HEADER, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %30 = call i32 @sout_AccessOutWrite(i32 %28, %struct.TYPE_19__* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %18, %1
  br label %34

34:                                               ; preds = %165, %33
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = call i32 @sout_MuxGetStream(%struct.TYPE_16__* %35, i32 1, i64* %7)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %40

41:                                               ; preds = %34
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VLC_TICK_INVALID, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %57, %51
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %64, i64 %66
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %5, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %72, %struct.TYPE_20__** %6, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_19__* @block_FifoGet(i32 %75)
  store %struct.TYPE_19__* %76, %struct.TYPE_19__** %8, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i64 @VLC_FOURCC(i8 signext 87, i8 signext 86, i8 signext 67, i8 signext 49)
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %153

82:                                               ; preds = %61
  br label %83

83:                                               ; preds = %129, %82
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %86, 4
  br i1 %87, label %88, label %127

88:                                               ; preds = %83
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %125, label %95

95:                                               ; preds = %88
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %125, label %102

102:                                              ; preds = %95
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 1
  br i1 %108, label %125, label %109

109:                                              ; preds = %102
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 13
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 12
  br label %123

123:                                              ; preds = %116, %109
  %124 = phi i1 [ false, %109 ], [ %122, %116 ]
  br label %125

125:                                              ; preds = %123, %102, %95, %88
  %126 = phi i1 [ true, %102 ], [ true, %95 ], [ true, %88 ], [ %124, %123 ]
  br label %127

127:                                              ; preds = %125, %83
  %128 = phi i1 [ false, %83 ], [ %126, %125 ]
  br i1 %128, label %129, label %138

129:                                              ; preds = %127
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %131, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %135, align 8
  br label %83

138:                                              ; preds = %127
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp sge i32 %141, 4
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 4
  store i32 %147, i32* %145, align 8
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 4
  store i32* %151, i32** %149, align 8
  br label %152

152:                                              ; preds = %143, %138
  br label %153

153:                                              ; preds = %152, %61
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %157 = call %struct.TYPE_19__* @asf_packet_create(%struct.TYPE_16__* %154, %struct.TYPE_20__* %155, %struct.TYPE_19__* %156)
  store %struct.TYPE_19__* %157, %struct.TYPE_19__** %9, align 8
  %158 = icmp ne %struct.TYPE_19__* %157, null
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  %160 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %164 = call i32 @sout_AccessOutWrite(i32 %162, %struct.TYPE_19__* %163)
  br label %165

165:                                              ; preds = %159, %153
  br label %34
}

declare dso_local %struct.TYPE_19__* @asf_header_create(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @sout_AccessOutWrite(i32, %struct.TYPE_19__*) #1

declare dso_local i32 @sout_MuxGetStream(%struct.TYPE_16__*, i32, i64*) #1

declare dso_local %struct.TYPE_19__* @block_FifoGet(i32) #1

declare dso_local i64 @VLC_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local %struct.TYPE_19__* @asf_packet_create(%struct.TYPE_16__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
