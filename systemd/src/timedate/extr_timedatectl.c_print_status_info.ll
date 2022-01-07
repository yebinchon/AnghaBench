; ModuleID = '/home/carl/AnghaBench/systemd/src/timedate/extr_timedatectl.c_print_status_info.c'
source_filename = "/home/carl/AnghaBench/systemd/src/timedate/extr_timedatectl.c_print_status_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i64, i64, i64, i64 }
%struct.tm = type { i32 }

@LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"UTC\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Failed to set TZ environment variable, ignoring: %m\00", align 1
@USEC_PER_SEC = common dso_local global i32 0, align 4
@arg_transport = common dso_local global i32 0, align 4
@BUS_TRANSPORT_LOCAL = common dso_local global i32 0, align 4
@BUS_TRANSPORT_MACHINE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [71 x i8] c"Could not get time from timedated and not operating locally, ignoring.\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"%a %Y-%m-%d %H:%M:%S %Z\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"               Local time: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%a %Y-%m-%d %H:%M:%S UTC\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"           Universal time: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"%a %Y-%m-%d %H:%M:%S\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"                 RTC time: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%Z, %z\00", align 1
@.str.13 = private unnamed_addr constant [126 x i8] c"                Time zone: %s (%s)\0ASystem clock synchronized: %s\0A              NTP service: %s\0A          RTC in local TZ: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"inactive\00", align 1
@.str.16 = private unnamed_addr constant [417 x i8] c"\0A%sWarning: The system is configured to read the RTC time in the local time zone.\0A         This mode cannot be fully supported. It will create various problems\0A         with time zone changes and daylight saving time adjustments. The RTC\0A         time is never updated, it relies on external facilities to maintain it.\0A         If at all possible, use RTC in UTC by calling\0A         'timedatectl set-local-rtc 0'.%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @print_status_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_status_info(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %6, align 4
  %14 = load i32, i32* @LINE_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = call i32 @assert(%struct.TYPE_4__* %18)
  %20 = call i8* @getenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i8*, i8** %4, align 8
  %25 = call i8* @strdupa(i8* %24)
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @isempty(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  br label %37

37:                                               ; preds = %33, %32
  %38 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %32 ], [ %36, %33 ]
  %39 = call i8* @strjoina(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40, i32 1)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 @log_warning_errno(i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %48

46:                                               ; preds = %37
  %47 = call i32 (...) @tzset()
  br label %48

48:                                               ; preds = %46, %43
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @USEC_PER_SEC, align 4
  %58 = sdiv i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  store i32 1, i32* %6, align 4
  br label %71

60:                                               ; preds = %48
  %61 = load i32, i32* @arg_transport, align 4
  %62 = load i32, i32* @BUS_TRANSPORT_LOCAL, align 4
  %63 = load i32, i32* @BUS_TRANSPORT_MACHINE, align 4
  %64 = call i64 @IN_SET(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i64 @time(i32* null)
  store i64 %67, i64* %10, align 8
  store i32 1, i32* %6, align 4
  br label %70

68:                                               ; preds = %60
  %69 = call i32 @log_warning(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = trunc i64 %15 to i32
  %76 = call i32 @localtime_r(i64* %10, %struct.tm* %9)
  %77 = call i64 @strftime(i8* %17, i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp ugt i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %82

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %81, %80
  %83 = phi i8* [ %17, %80 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %81 ]
  %84 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %83)
  %85 = trunc i64 %15 to i32
  %86 = call i32 @gmtime_r(i64* %10, %struct.tm* %9)
  %87 = call i64 @strftime(i8* %17, i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %86)
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %82
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %90
  %93 = phi i8* [ %17, %90 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %91 ]
  %94 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %93)
  br label %98

95:                                               ; preds = %71
  %96 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %97 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %92
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %98
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @USEC_PER_SEC, align 4
  %108 = sdiv i32 %106, %107
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %13, align 8
  %110 = trunc i64 %15 to i32
  %111 = call i32 @gmtime_r(i64* %13, %struct.tm* %9)
  %112 = call i64 @strftime(i8* %17, i32 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %111)
  store i64 %112, i64* %11, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp ugt i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %103
  br label %117

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %115
  %118 = phi i8* [ %17, %115 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %116 ]
  %119 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %118)
  br label %122

120:                                              ; preds = %98
  %121 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = trunc i64 %15 to i32
  %127 = call i32 @localtime_r(i64* %10, %struct.tm* %9)
  %128 = call i64 @strftime(i8* %17, i32 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %127)
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i8*, i8** %3, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i8*, i8** %3, align 8
  %134 = call i32 @setenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %133, i32 1)
  store i32 %134, i32* %12, align 4
  br label %137

135:                                              ; preds = %129
  %136 = call i32 @unsetenv(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %135, %132
  %138 = load i32, i32* %12, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* @errno, align 4
  %142 = call i32 @log_warning_errno(i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %145

143:                                              ; preds = %137
  %144 = call i32 (...) @tzset()
  br label %145

145:                                              ; preds = %143, %140
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i8* @strna(i8* %148)
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i64, i64* %11, align 8
  %154 = icmp ugt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  br label %157

156:                                              ; preds = %152, %145
  br label %157

157:                                              ; preds = %156, %155
  %158 = phi i8* [ %17, %155 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %156 ]
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 6
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @yes_no(i64 %161)
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %157
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)
  br label %175

174:                                              ; preds = %157
  br label %175

175:                                              ; preds = %174, %167
  %176 = phi i8* [ %173, %167 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %174 ]
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = call i8* @yes_no(i64 %179)
  %181 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.13, i64 0, i64 0), i8* %149, i8* %158, i8* %162, i8* %176, i8* %180)
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %175
  %187 = call i8* (...) @ansi_highlight()
  %188 = call i8* (...) @ansi_normal()
  %189 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([417 x i8], [417 x i8]* @.str.16, i64 0, i64 0), i8* %187, i8* %188)
  br label %190

190:                                              ; preds = %186, %175
  %191 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %191)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @assert(%struct.TYPE_4__*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i8* @strdupa(i8*) #2

declare dso_local i8* @strjoina(i8*, i8*) #2

declare dso_local i64 @isempty(i8*) #2

declare dso_local i32 @setenv(i8*, i8*, i32) #2

declare dso_local i32 @log_warning_errno(i32, i8*) #2

declare dso_local i32 @tzset(...) #2

declare dso_local i64 @IN_SET(i32, i32, i32) #2

declare dso_local i64 @time(i32*) #2

declare dso_local i32 @log_warning(i8*) #2

declare dso_local i64 @strftime(i8*, i32, i8*, i32) #2

declare dso_local i32 @localtime_r(i64*, %struct.tm*) #2

declare dso_local i32 @printf(i8*, i8*, ...) #2

declare dso_local i32 @gmtime_r(i64*, %struct.tm*) #2

declare dso_local i32 @unsetenv(i8*) #2

declare dso_local i8* @strna(i8*) #2

declare dso_local i8* @yes_no(i64) #2

declare dso_local i8* @ansi_highlight(...) #2

declare dso_local i8* @ansi_normal(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
