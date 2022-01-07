; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_Run.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan.c_scan_Run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32, i32*)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32*, i64*)*, i32, i32 (%struct.TYPE_19__*, i32, i32*)*, i32 (%struct.TYPE_19__*, i32, i32, i32)*, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i32 }

@VLC_ENOITEM = common dso_local global i32 0, align 4
@VLC_EGENERIC = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@PSI_PAT_PID = common dso_local global i32 0, align 4
@SI_SDT_PID = common dso_local global i32 0, align 4
@SI_NIT_PID = common dso_local global i32 0, align 4
@TS_PACKET_SIZE = common dso_local global i32 0, align 4
@SCAN_READ_BUFFER_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scan_Run(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = call i64 @scan_Next(%struct.TYPE_19__* %14, i32* %4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @VLC_ENOITEM, align 4
  store i32 %18, i32* %2, align 4
  br label %156

19:                                               ; preds = %1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = call %struct.TYPE_20__* @scan_session_New(%struct.TYPE_19__* %20, i32* %4)
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %5, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %23 = icmp eq %struct.TYPE_20__* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %28, i32* %2, align 4
  br label %156

29:                                               ; preds = %19
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_19__*, i32, i32*)*, i32 (%struct.TYPE_19__*, i32, i32*)** %31, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %32(%struct.TYPE_19__* %33, i32 %36, i32* %4)
  %38 = load i32, i32* @VLC_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %29
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %43 = call i32 @scan_session_Destroy(%struct.TYPE_19__* %41, %struct.TYPE_20__* %42)
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %2, align 4
  br label %156

45:                                               ; preds = %29
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 4
  %48 = load i32 (%struct.TYPE_19__*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32)** %47, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @PSI_PAT_PID, align 4
  %54 = call i32 %48(%struct.TYPE_19__* %49, i32 %52, i32 %53, i32 1)
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 4
  %57 = load i32 (%struct.TYPE_19__*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32)** %56, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SI_SDT_PID, align 4
  %63 = call i32 %57(%struct.TYPE_19__* %58, i32 %61, i32 %62, i32 1)
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %45
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 4
  %72 = load i32 (%struct.TYPE_19__*, i32, i32, i32)*, i32 (%struct.TYPE_19__*, i32, i32, i32)** %71, align 8
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SI_NIT_PID, align 4
  %78 = call i32 %72(%struct.TYPE_19__* %73, i32 %76, i32 %77, i32 1)
  br label %79

79:                                               ; preds = %69, %45
  %80 = load i32, i32* @TS_PACKET_SIZE, align 4
  %81 = load i32, i32* @SCAN_READ_BUFFER_COUNT, align 4
  %82 = mul nsw i32 %80, %81
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %6, align 8
  %85 = alloca i32, i64 %83, align 16
  store i64 %83, i64* %7, align 8
  %86 = call i32 (...) @vlc_tick_now()
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %149, %79
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %89 = call i32 @scan_session_GetTablesTimeout(%struct.TYPE_20__* %88)
  store i32 %89, i32* %9, align 4
  %90 = call i32 (...) @vlc_tick_now()
  %91 = load i32, i32* %8, align 4
  %92 = sub i32 %90, %91
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %150

97:                                               ; preds = %87
  store i64 0, i64* %11, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 1
  %100 = load i32 (%struct.TYPE_19__*, i32, i32, i32, i32*, i64*)*, i32 (%struct.TYPE_19__*, i32, i32, i32, i32*, i64*)** %99, align 8
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sub i32 %105, %106
  %108 = load i32, i32* @SCAN_READ_BUFFER_COUNT, align 4
  %109 = call i32 %100(%struct.TYPE_19__* %101, i32 %104, i32 %107, i32 %108, i32* %85, i64* %11)
  store i32 %109, i32* %12, align 4
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 3
  %112 = load i32 (%struct.TYPE_19__*, i32, i32*)*, i32 (%struct.TYPE_19__*, i32, i32*)** %111, align 8
  %113 = icmp ne i32 (%struct.TYPE_19__*, i32, i32*)* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %97
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 3
  %117 = load i32 (%struct.TYPE_19__*, i32, i32*)*, i32 (%struct.TYPE_19__*, i32, i32*)** %116, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = call i32 %117(%struct.TYPE_19__* %118, i32 %121, i32* %123)
  br label %125

125:                                              ; preds = %114, %97
  %126 = load i32, i32* %12, align 4
  %127 = load i32, i32* @VLC_SUCCESS, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  br label %150

130:                                              ; preds = %125
  store i64 0, i64* %13, align 8
  br label %131

131:                                              ; preds = %146, %130
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %11, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %131
  %136 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %137 = load i64, i64* %13, align 8
  %138 = load i32, i32* @TS_PACKET_SIZE, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 %137, %139
  %141 = getelementptr inbounds i32, i32* %85, i64 %140
  %142 = call i64 @scan_session_Push(%struct.TYPE_20__* %136, i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %149

145:                                              ; preds = %135
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %13, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %13, align 8
  br label %131

149:                                              ; preds = %144, %131
  br label %87

150:                                              ; preds = %129, %96
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %153 = call i32 @scan_session_Destroy(%struct.TYPE_19__* %151, %struct.TYPE_20__* %152)
  %154 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %154, i32* %2, align 4
  %155 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %155)
  br label %156

156:                                              ; preds = %150, %40, %27, %17
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i64 @scan_Next(%struct.TYPE_19__*, i32*) #1

declare dso_local %struct.TYPE_20__* @scan_session_New(%struct.TYPE_19__*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scan_session_Destroy(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vlc_tick_now(...) #1

declare dso_local i32 @scan_session_GetTablesTimeout(%struct.TYPE_20__*) #1

declare dso_local i64 @scan_session_Push(%struct.TYPE_20__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
