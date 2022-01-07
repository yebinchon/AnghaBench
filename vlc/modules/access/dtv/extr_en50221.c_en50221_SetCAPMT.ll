; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_en50221_SetCAPMT.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/dtv/extr_en50221.c_en50221_SetCAPMT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_15__** }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64 }

@MAX_PROGRAMS = common dso_local global i32 0, align 4
@MAX_SESSIONS = common dso_local global i32 0, align 4
@RI_CONDITIONAL_ACCESS_SUPPORT = common dso_local global i64 0, align 8
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @en50221_SetCAPMT(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = call i32 @CAPMTNeedsDescrambling(%struct.TYPE_15__* %10)
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %87, %2
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAX_PROGRAMS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %90

16:                                               ; preds = %12
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %19, i64 %21
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %22, align 8
  %24 = icmp ne %struct.TYPE_15__* %23, null
  br i1 %24, label %25, label %86

25:                                               ; preds = %16
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %28, i64 %30
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = call i32 @en50221_capmt_Delete(%struct.TYPE_15__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %47, i64 %49
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %4, align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %54, i64 %56
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %57, align 8
  br label %85

58:                                               ; preds = %39
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %62, i64 %64
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = icmp ne %struct.TYPE_15__* %59, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %58
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %71, i64 %73
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = call i32 @en50221_capmt_Delete(%struct.TYPE_15__* %75)
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %80, i64 %82
  store %struct.TYPE_15__* %77, %struct.TYPE_15__** %83, align 8
  br label %84

84:                                               ; preds = %68, %58
  br label %85

85:                                               ; preds = %84, %42
  br label %90

86:                                               ; preds = %25, %16
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %7, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %12

90:                                               ; preds = %85, %12
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %123, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %93
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %119, %96
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @MAX_PROGRAMS, align 4
  %100 = icmp ult i32 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %104, i64 %106
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = icmp eq %struct.TYPE_15__* %108, null
  br i1 %109, label %110, label %118

110:                                              ; preds = %101
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %114, i64 %116
  store %struct.TYPE_15__* %111, %struct.TYPE_15__** %117, align 8
  br label %122

118:                                              ; preds = %101
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %8, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %97

122:                                              ; preds = %110, %97
  br label %123

123:                                              ; preds = %122, %93, %90
  %124 = load i32, i32* %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %177

129:                                              ; preds = %126, %123
  store i32 1, i32* %9, align 4
  br label %130

130:                                              ; preds = %173, %129
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @MAX_SESSIONS, align 4
  %133 = icmp ule i32 %131, %132
  br i1 %133, label %134, label %176

134:                                              ; preds = %130
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sub i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @RI_CONDITIONAL_ACCESS_SUPPORT, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %134
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %156 = call i32 @CAPMTUpdate(%struct.TYPE_16__* %153, i32 %154, %struct.TYPE_15__* %155)
  br label %171

157:                                              ; preds = %149, %146
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %164 = call i32 @CAPMTDelete(%struct.TYPE_16__* %161, i32 %162, %struct.TYPE_15__* %163)
  br label %170

165:                                              ; preds = %157
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = call i32 @CAPMTAdd(%struct.TYPE_16__* %166, i32 %167, %struct.TYPE_15__* %168)
  br label %170

170:                                              ; preds = %165, %160
  br label %171

171:                                              ; preds = %170, %152
  br label %172

172:                                              ; preds = %171, %134
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %9, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %130

176:                                              ; preds = %130
  br label %177

177:                                              ; preds = %176, %126
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = call i32 @en50221_capmt_Delete(%struct.TYPE_15__* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %184
}

declare dso_local i32 @CAPMTNeedsDescrambling(%struct.TYPE_15__*) #1

declare dso_local i32 @en50221_capmt_Delete(%struct.TYPE_15__*) #1

declare dso_local i32 @CAPMTUpdate(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CAPMTDelete(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @CAPMTAdd(%struct.TYPE_16__*, i32, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
