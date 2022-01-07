; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-main.c_process_optarg.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/client/extr_adh-main.c_process_optarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optioninfo = type { i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"--no-\00", align 1
@ot_funcarg = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"option --%s requires a value argument\00", align 1
@ot_funcarg2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"option --%s requires two more arguments\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"option --%s does not take a value\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"option `-' must be followed by a domain\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"option -%s requires a value argument\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"two values for option -%s given !\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"option -%s does not take a value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8***, i8*)* @process_optarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_optarg(i8* %0, i8*** %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.optioninfo*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 43
  br i1 %20, label %21, label %226

21:                                               ; preds = %15, %3
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 45
  br i1 %26, label %27, label %121

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %121

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strncmp(i8* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  store i32 1, i32* %9, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 5
  %40 = call %struct.optioninfo* @opt_findl(i8* %39)
  store %struct.optioninfo* %40, %struct.optioninfo** %7, align 8
  br label %45

41:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = call %struct.optioninfo* @opt_findl(i8* %43)
  store %struct.optioninfo* %44, %struct.optioninfo** %7, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %47 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ot_funcarg, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load i8***, i8**** %5, align 8
  %53 = icmp ne i8*** %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i8***, i8**** %5, align 8
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %55, align 8
  %58 = load i8*, i8** %57, align 8
  br label %61

59:                                               ; preds = %51
  %60 = load i8*, i8** %6, align 8
  br label %61

61:                                               ; preds = %59, %54
  %62 = phi i8* [ %58, %54 ], [ %60, %59 ]
  store i8* %62, i8** %4, align 8
  %63 = load i8*, i8** %4, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %67 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %61
  store i8* null, i8** %8, align 8
  br label %115

71:                                               ; preds = %45
  %72 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %73 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ot_funcarg2, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %105

77:                                               ; preds = %71
  %78 = load i8***, i8**** %5, align 8
  %79 = call i32 @assert(i8*** %78)
  %80 = load i8***, i8**** %5, align 8
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i32 1
  store i8** %82, i8*** %80, align 8
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** %4, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %77
  %87 = load i8***, i8**** %5, align 8
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %87, align 8
  %90 = load i8*, i8** %89, align 8
  br label %92

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i8* [ %90, %86 ], [ null, %91 ]
  store i8* %93, i8** %8, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %96, %92
  %100 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %101 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %96
  br label %114

105:                                              ; preds = %71
  %106 = load i8*, i8** %6, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %110 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %108, %105
  store i8* null, i8** %4, align 8
  store i8* null, i8** %8, align 8
  br label %114

114:                                              ; preds = %113, %104
  br label %115

115:                                              ; preds = %114, %70
  %116 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @opt_do(%struct.optioninfo* %116, i32 %117, i8* %118, i8* %119)
  br label %225

121:                                              ; preds = %27, %21
  %122 = load i8*, i8** %4, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 0
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 45
  br i1 %126, label %127, label %152

127:                                              ; preds = %121
  %128 = load i8*, i8** %4, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %127
  %134 = load i8***, i8**** %5, align 8
  %135 = icmp ne i8*** %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load i8***, i8**** %5, align 8
  %138 = load i8**, i8*** %137, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i32 1
  store i8** %139, i8*** %137, align 8
  %140 = load i8*, i8** %139, align 8
  br label %143

141:                                              ; preds = %133
  %142 = load i8*, i8** %6, align 8
  br label %143

143:                                              ; preds = %141, %136
  %144 = phi i8* [ %140, %136 ], [ %142, %141 ]
  store i8* %144, i8** %4, align 8
  %145 = load i8*, i8** %4, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %143
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 @query_do(i8* %150)
  br label %224

152:                                              ; preds = %127, %121
  %153 = load i8*, i8** %4, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 0
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 43
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %9, align 4
  %159 = load i8*, i8** %4, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %4, align 8
  br label %161

161:                                              ; preds = %222, %152
  %162 = load i8*, i8** %4, align 8
  %163 = load i8, i8* %162, align 1
  %164 = icmp ne i8 %163, 0
  br i1 %164, label %165, label %223

165:                                              ; preds = %161
  %166 = call %struct.optioninfo* @opt_finds(i8** %4)
  store %struct.optioninfo* %166, %struct.optioninfo** %7, align 8
  %167 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %168 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ot_funcarg, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %210

172:                                              ; preds = %165
  %173 = load i8*, i8** %4, align 8
  %174 = load i8, i8* %173, align 1
  %175 = icmp ne i8 %174, 0
  br i1 %175, label %196, label %176

176:                                              ; preds = %172
  %177 = load i8***, i8**** %5, align 8
  %178 = icmp ne i8*** %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load i8***, i8**** %5, align 8
  %181 = load i8**, i8*** %180, align 8
  %182 = getelementptr inbounds i8*, i8** %181, i32 1
  store i8** %182, i8*** %180, align 8
  %183 = load i8*, i8** %182, align 8
  br label %186

184:                                              ; preds = %176
  %185 = load i8*, i8** %6, align 8
  br label %186

186:                                              ; preds = %184, %179
  %187 = phi i8* [ %183, %179 ], [ %185, %184 ]
  store i8* %187, i8** %4, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %186
  %191 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %192 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %190, %186
  br label %205

196:                                              ; preds = %172
  %197 = load i8*, i8** %6, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %196
  %200 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %201 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %199, %196
  br label %205

205:                                              ; preds = %204, %195
  %206 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i8*, i8** %4, align 8
  %209 = call i32 @opt_do(%struct.optioninfo* %206, i32 %207, i8* %208, i8* null)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  br label %222

210:                                              ; preds = %165
  %211 = load i8*, i8** %6, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %210
  %214 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %215 = getelementptr inbounds %struct.optioninfo, %struct.optioninfo* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = call i32 (i8*, ...) @usageerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %216)
  br label %218

218:                                              ; preds = %213, %210
  %219 = load %struct.optioninfo*, %struct.optioninfo** %7, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @opt_do(%struct.optioninfo* %219, i32 %220, i8* null, i8* null)
  br label %222

222:                                              ; preds = %218, %205
  br label %161

223:                                              ; preds = %161
  br label %224

224:                                              ; preds = %223, %149
  br label %225

225:                                              ; preds = %224, %115
  br label %229

226:                                              ; preds = %15
  %227 = load i8*, i8** %4, align 8
  %228 = call i32 @query_do(i8* %227)
  br label %229

229:                                              ; preds = %226, %225
  ret void
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.optioninfo* @opt_findl(i8*) #1

declare dso_local i32 @usageerr(i8*, ...) #1

declare dso_local i32 @assert(i8***) #1

declare dso_local i32 @opt_do(%struct.optioninfo*, i32, i8*, i8*) #1

declare dso_local i32 @query_do(i8*) #1

declare dso_local %struct.optioninfo* @opt_finds(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
