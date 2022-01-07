; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan_list.c_scan_list_dvbv3_load.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dvb/extr_scan_list.c_scan_list_dvbv3_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to open satellite file (%s)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@SCAN_DELIVERY_DVB_S = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"S2\00", align 1
@SCAN_DELIVERY_DVB_S2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@SCAN_POLARIZATION_HORIZONTAL = common dso_local global i32 0, align 4
@SCAN_POLARIZATION_VERTICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @scan_list_dvbv3_load(i32* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call i32* @vlc_fopen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @msg_Err(i32* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %161

26:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__** %9, %struct.TYPE_6__*** %10, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 0, i64* %27, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i64 0, i64* %14, align 8
  br label %28

28:                                               ; preds = %145, %143, %138, %133, %124, %115, %99, %90, %56, %50, %26
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @getline(i8** %13, i64* %14, i32* %29)
  store i32 %30, i32* %15, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %146

32:                                               ; preds = %28
  store i8* null, i8** %17, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %37 = call i64 @scan_list_entry_add(%struct.TYPE_6__*** %10, %struct.TYPE_6__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %40, align 8
  br label %43

43:                                               ; preds = %39, %35, %32
  %44 = call %struct.TYPE_6__* (...) @scan_list_entry_New()
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %11, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = icmp eq %struct.TYPE_6__* %45, null
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %28

51:                                               ; preds = %43
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = call i8* @strtok_r(i8* %52, i8* %53, i8** %17)
  store i8* %54, i8** %16, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %28

57:                                               ; preds = %51
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* @SCAN_DELIVERY_DVB_S, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %74

65:                                               ; preds = %57
  %66 = load i8*, i8** %16, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* @SCAN_DELIVERY_DVB_S2, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %73, %61
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SCAN_DELIVERY_DVB_S, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SCAN_DELIVERY_DVB_S2, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %145

86:                                               ; preds = %80, %74
  %87 = load i8*, i8** %12, align 8
  %88 = call i8* @strtok_r(i8* null, i8* %87, i8** %17)
  store i8* %88, i8** %16, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %28

91:                                               ; preds = %86
  %92 = load i8*, i8** %16, align 8
  %93 = call i8* @atoi(i8* %92)
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i8* @strtok_r(i8* null, i8* %96, i8** %17)
  store i8* %97, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %91
  br label %28

100:                                              ; preds = %91
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @strcasecmp(i8* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @SCAN_POLARIZATION_HORIZONTAL, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @SCAN_POLARIZATION_VERTICAL, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load i8*, i8** %12, align 8
  %113 = call i8* @strtok_r(i8* null, i8* %112, i8** %17)
  store i8* %113, i8** %16, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %108
  br label %28

116:                                              ; preds = %108
  %117 = load i8*, i8** %16, align 8
  %118 = call i8* @atoi(i8* %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = call i8* @strtok_r(i8* null, i8* %121, i8** %17)
  store i8* %122, i8** %16, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %116
  br label %28

125:                                              ; preds = %116
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @scan_list_parse_fec(i8* %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = call i8* @strtok_r(i8* null, i8* %130, i8** %17)
  store i8* %131, i8** %16, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %125
  br label %28

134:                                              ; preds = %125
  %135 = load i8*, i8** %12, align 8
  %136 = call i8* @strtok_r(i8* null, i8* %135, i8** %17)
  store i8* %136, i8** %16, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  br label %28

139:                                              ; preds = %134
  %140 = load i8*, i8** %12, align 8
  %141 = call i8* @strtok_r(i8* null, i8* %140, i8** %17)
  store i8* %141, i8** %16, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %28

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144, %80
  br label %28

146:                                              ; preds = %28
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %148 = icmp ne %struct.TYPE_6__* %147, null
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %151 = call i64 @scan_list_entry_add(%struct.TYPE_6__*** %10, %struct.TYPE_6__* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i64*, i64** %7, align 8
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %153, %149, %146
  %158 = load i32*, i32** %8, align 8
  %159 = call i32 @fclose(i32* %158)
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %160, %struct.TYPE_6__** %4, align 8
  br label %161

161:                                              ; preds = %157, %22
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %162
}

declare dso_local i32* @vlc_fopen(i8*, i8*) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @scan_list_entry_add(%struct.TYPE_6__***, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @scan_list_entry_New(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @scan_list_parse_fec(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
