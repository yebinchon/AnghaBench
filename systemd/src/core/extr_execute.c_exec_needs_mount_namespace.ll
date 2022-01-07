; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_needs_mount_namespace.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_execute.c_exec_needs_mount_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, %struct.TYPE_9__*, i64, i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i64, i64 }

@MS_SHARED = common dso_local global i32 0, align 4
@PROTECT_SYSTEM_NO = common dso_local global i64 0, align 8
@PROTECT_HOME_NO = common dso_local global i64 0, align 8
@_EXEC_DIRECTORY_TYPE_MAX = common dso_local global i64 0, align 8
@EXEC_DIRECTORY_STATE = common dso_local global i64 0, align 8
@EXEC_DIRECTORY_CACHE = common dso_local global i64 0, align 8
@EXEC_DIRECTORY_LOGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_10__*)* @exec_needs_mount_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_needs_mount_namespace(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = call i32 @assert(%struct.TYPE_11__* %9)
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %12 = call i32 @assert(%struct.TYPE_11__* %11)
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 20
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %197

18:                                               ; preds = %3
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strv_isempty(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %18
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 18
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @strv_isempty(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 17
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strv_isempty(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %24, %18
  store i32 1, i32* %4, align 4
  br label %197

37:                                               ; preds = %30
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %197

43:                                               ; preds = %37
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %197

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @MS_SHARED, align 4
  %54 = call i32 @IN_SET(i32 %52, i32 0, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 1, i32* %4, align 4
  br label %197

57:                                               ; preds = %49
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 15
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %64 = icmp ne %struct.TYPE_10__* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %65
  store i32 1, i32* %4, align 4
  br label %197

76:                                               ; preds = %70, %62, %57
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 14
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %118, label %81

81:                                               ; preds = %76
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 13
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %118, label %86

86:                                               ; preds = %81
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PROTECT_SYSTEM_NO, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %118, label %92

92:                                               ; preds = %86
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PROTECT_HOME_NO, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %118, label %98

98:                                               ; preds = %92
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 12
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %118, label %103

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 11
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 10
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 9
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113, %108, %103, %98, %92, %86, %81, %76
  store i32 1, i32* %4, align 4
  br label %197

119:                                              ; preds = %113
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 8
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %119
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %4, align 4
  br label %197

130:                                              ; preds = %124
  store i64 0, i64* %8, align 8
  br label %131

131:                                              ; preds = %156, %130
  %132 = load i64, i64* %8, align 8
  %133 = load i64, i64* @_EXEC_DIRECTORY_TYPE_MAX, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 6
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* %8, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %135
  br label %156

144:                                              ; preds = %135
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @strv_isempty(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %144
  store i32 1, i32* %4, align 4
  br label %197

155:                                              ; preds = %144
  br label %156

156:                                              ; preds = %155, %143
  %157 = load i64, i64* %8, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %8, align 8
  br label %131

159:                                              ; preds = %131
  br label %160

160:                                              ; preds = %159, %119
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %160
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_9__*, %struct.TYPE_9__** %167, align 8
  %169 = load i64, i64* @EXEC_DIRECTORY_STATE, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @strv_isempty(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %165
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %177, align 8
  %179 = load i64, i64* @EXEC_DIRECTORY_CACHE, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @strv_isempty(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %175
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 4
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = load i64, i64* @EXEC_DIRECTORY_LOGS, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @strv_isempty(i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %185, %175, %165
  store i32 1, i32* %4, align 4
  br label %197

196:                                              ; preds = %185, %160
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %195, %154, %129, %118, %75, %56, %48, %42, %36, %17
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @assert(%struct.TYPE_11__*) #1

declare dso_local i32 @strv_isempty(i32) #1

declare dso_local i32 @IN_SET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
