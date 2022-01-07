; ModuleID = '/home/carl/AnghaBench/systemd/src/core/extr_automount.c_automount_deserialize_item.c'
source_filename = "/home/carl/AnghaBench/systemd/src/core/extr_automount.c_automount_deserialize_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i64, i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to parse state value: %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to parse result value: %s\00", align 1
@AUTOMOUNT_SUCCESS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"dev-id\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Failed to parse dev-id value: %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"token\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to parse token value: %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Failed to add token to set: %m\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"expire-token\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to add expire token to set: %m\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pipe-fd\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Failed to parse pipe-fd value: %s\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"Unknown serialization key: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i8*, %struct.TYPE_8__*)* @automount_deserialize_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @automount_deserialize_item(i32* %0, i8* %1, i8* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call %struct.TYPE_8__* @AUTOMOUNT(i32* %18)
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %21 = call i32 @assert(%struct.TYPE_8__* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %23 = call i32 @assert(%struct.TYPE_8__* %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @streq(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %4
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @automount_state_from_string(i8* %28)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32*, i32** %6, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @log_unit_debug(i32* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %40

36:                                               ; preds = %27
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 5
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %32
  br label %191

41:                                               ; preds = %4
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @streq(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %41
  %46 = load i8*, i8** %8, align 8
  %47 = call i64 @automount_result_from_string(i8* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32*, i32** %6, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @log_unit_debug(i32* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %52)
  br label %63

54:                                               ; preds = %45
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* @AUTOMOUNT_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %50
  br label %190

64:                                               ; preds = %41
  %65 = load i8*, i8** %7, align 8
  %66 = call i64 @streq(i8* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = call i64 @safe_atolu(i8* %69, i64* %14)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = load i32*, i32** %6, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @log_unit_debug(i32* %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %74)
  br label %80

76:                                               ; preds = %68
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  br label %189

81:                                               ; preds = %64
  %82 = load i8*, i8** %7, align 8
  %83 = call i64 @streq(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load i8*, i8** %8, align 8
  %87 = call i64 @safe_atou(i8* %86, i32* %15)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85
  %90 = load i32*, i32** %6, align 8
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @log_unit_debug(i32* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %91)
  br label %115

93:                                               ; preds = %85
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = call i32 @set_ensure_allocated(i32* %95, i32* null)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = call i32 (...) @log_oom()
  store i32 0, i32* %5, align 4
  br label %192

101:                                              ; preds = %93
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @UINT_TO_PTR(i32 %105)
  %107 = call i32 @set_put(i32 %104, i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load i32*, i32** %6, align 8
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @log_unit_error_errno(i32* %111, i32 %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %114

114:                                              ; preds = %110, %101
  br label %115

115:                                              ; preds = %114, %89
  br label %188

116:                                              ; preds = %81
  %117 = load i8*, i8** %7, align 8
  %118 = call i64 @streq(i8* %117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %116
  %121 = load i8*, i8** %8, align 8
  %122 = call i64 @safe_atou(i8* %121, i32* %16)
  %123 = icmp slt i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %6, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @log_unit_debug(i32* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %126)
  br label %150

128:                                              ; preds = %120
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = call i32 @set_ensure_allocated(i32* %130, i32* null)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = call i32 (...) @log_oom()
  store i32 0, i32* %5, align 4
  br label %192

136:                                              ; preds = %128
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @UINT_TO_PTR(i32 %140)
  %142 = call i32 @set_put(i32 %139, i32 %141)
  store i32 %142, i32* %11, align 4
  %143 = load i32, i32* %11, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @log_unit_error_errno(i32* %146, i32 %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %149

149:                                              ; preds = %145, %136
  br label %150

150:                                              ; preds = %149, %124
  br label %187

151:                                              ; preds = %116
  %152 = load i8*, i8** %7, align 8
  %153 = call i64 @streq(i8* %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %151
  %156 = load i8*, i8** %8, align 8
  %157 = call i64 @safe_atoi(i8* %156, i32* %17)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %167, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %17, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %164 = load i32, i32* %17, align 4
  %165 = call i32 @fdset_contains(%struct.TYPE_8__* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %171, label %167

167:                                              ; preds = %162, %159, %155
  %168 = load i32*, i32** %6, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = call i32 @log_unit_debug(i32* %168, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i8* %169)
  br label %181

171:                                              ; preds = %162
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @safe_close(i32 %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i32 @fdset_remove(%struct.TYPE_8__* %176, i32 %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %171, %167
  br label %186

182:                                              ; preds = %151
  %183 = load i32*, i32** %6, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @log_unit_debug(i32* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %182, %181
  br label %187

187:                                              ; preds = %186, %150
  br label %188

188:                                              ; preds = %187, %115
  br label %189

189:                                              ; preds = %188, %80
  br label %190

190:                                              ; preds = %189, %63
  br label %191

191:                                              ; preds = %190, %40
  store i32 0, i32* %5, align 4
  br label %192

192:                                              ; preds = %191, %134, %99
  %193 = load i32, i32* %5, align 4
  ret i32 %193
}

declare dso_local %struct.TYPE_8__* @AUTOMOUNT(i32*) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i64 @automount_state_from_string(i8*) #1

declare dso_local i32 @log_unit_debug(i32*, i8*, i8*) #1

declare dso_local i64 @automount_result_from_string(i8*) #1

declare dso_local i64 @safe_atolu(i8*, i64*) #1

declare dso_local i64 @safe_atou(i8*, i32*) #1

declare dso_local i32 @set_ensure_allocated(i32*, i32*) #1

declare dso_local i32 @log_oom(...) #1

declare dso_local i32 @set_put(i32, i32) #1

declare dso_local i32 @UINT_TO_PTR(i32) #1

declare dso_local i32 @log_unit_error_errno(i32*, i32, i8*) #1

declare dso_local i64 @safe_atoi(i8*, i32*) #1

declare dso_local i32 @fdset_contains(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @safe_close(i32) #1

declare dso_local i32 @fdset_remove(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
