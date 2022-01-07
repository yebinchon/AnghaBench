; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_parseatom.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_regexp.c_parseatom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_4__*, i32 }
%struct.cstate = type { i64, i64, i64, %struct.TYPE_4__**, i32 }

@L_CHAR = common dso_local global i64 0, align 8
@P_CHAR = common dso_local global i32 0, align 4
@L_CCLASS = common dso_local global i64 0, align 8
@P_CCLASS = common dso_local global i32 0, align 4
@L_NCCLASS = common dso_local global i64 0, align 8
@P_NCCLASS = common dso_local global i32 0, align 4
@L_REF = common dso_local global i64 0, align 8
@P_REF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid back-reference\00", align 1
@P_ANY = common dso_local global i32 0, align 4
@P_PAR = common dso_local global i32 0, align 4
@MAXSUB = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"too many captures\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"unmatched '('\00", align 1
@L_NC = common dso_local global i8 0, align 1
@L_PLA = common dso_local global i8 0, align 1
@P_PLA = common dso_local global i32 0, align 4
@L_NLA = common dso_local global i8 0, align 1
@P_NLA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"syntax error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.cstate*)* @parseatom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @parseatom(%struct.cstate* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.cstate*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.cstate* %0, %struct.cstate** %3, align 8
  %5 = load %struct.cstate*, %struct.cstate** %3, align 8
  %6 = getelementptr inbounds %struct.cstate, %struct.cstate* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @L_CHAR, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %1
  %11 = load %struct.cstate*, %struct.cstate** %3, align 8
  %12 = load i32, i32* @P_CHAR, align 4
  %13 = call %struct.TYPE_4__* @newnode(%struct.cstate* %11, i32 %12)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %4, align 8
  %14 = load %struct.cstate*, %struct.cstate** %3, align 8
  %15 = getelementptr inbounds %struct.cstate, %struct.cstate* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.cstate*, %struct.cstate** %3, align 8
  %20 = call i32 @next(%struct.cstate* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %2, align 8
  br label %228

22:                                               ; preds = %1
  %23 = load %struct.cstate*, %struct.cstate** %3, align 8
  %24 = getelementptr inbounds %struct.cstate, %struct.cstate* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @L_CCLASS, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.cstate*, %struct.cstate** %3, align 8
  %30 = load i32, i32* @P_CCLASS, align 4
  %31 = call %struct.TYPE_4__* @newnode(%struct.cstate* %29, i32 %30)
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  %32 = load %struct.cstate*, %struct.cstate** %3, align 8
  %33 = getelementptr inbounds %struct.cstate, %struct.cstate* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.cstate*, %struct.cstate** %3, align 8
  %38 = call i32 @next(%struct.cstate* %37)
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %39, %struct.TYPE_4__** %2, align 8
  br label %228

40:                                               ; preds = %22
  %41 = load %struct.cstate*, %struct.cstate** %3, align 8
  %42 = getelementptr inbounds %struct.cstate, %struct.cstate* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @L_NCCLASS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load %struct.cstate*, %struct.cstate** %3, align 8
  %48 = load i32, i32* @P_NCCLASS, align 4
  %49 = call %struct.TYPE_4__* @newnode(%struct.cstate* %47, i32 %48)
  store %struct.TYPE_4__* %49, %struct.TYPE_4__** %4, align 8
  %50 = load %struct.cstate*, %struct.cstate** %3, align 8
  %51 = getelementptr inbounds %struct.cstate, %struct.cstate* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.cstate*, %struct.cstate** %3, align 8
  %56 = call i32 @next(%struct.cstate* %55)
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %2, align 8
  br label %228

58:                                               ; preds = %40
  %59 = load %struct.cstate*, %struct.cstate** %3, align 8
  %60 = getelementptr inbounds %struct.cstate, %struct.cstate* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @L_REF, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %112

64:                                               ; preds = %58
  %65 = load %struct.cstate*, %struct.cstate** %3, align 8
  %66 = load i32, i32* @P_REF, align 4
  %67 = call %struct.TYPE_4__* @newnode(%struct.cstate* %65, i32 %66)
  store %struct.TYPE_4__* %67, %struct.TYPE_4__** %4, align 8
  %68 = load %struct.cstate*, %struct.cstate** %3, align 8
  %69 = getelementptr inbounds %struct.cstate, %struct.cstate* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %64
  %73 = load %struct.cstate*, %struct.cstate** %3, align 8
  %74 = getelementptr inbounds %struct.cstate, %struct.cstate* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.cstate*, %struct.cstate** %3, align 8
  %77 = getelementptr inbounds %struct.cstate, %struct.cstate* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp sge i64 %75, %78
  br i1 %79, label %90, label %80

80:                                               ; preds = %72
  %81 = load %struct.cstate*, %struct.cstate** %3, align 8
  %82 = getelementptr inbounds %struct.cstate, %struct.cstate* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %82, align 8
  %84 = load %struct.cstate*, %struct.cstate** %3, align 8
  %85 = getelementptr inbounds %struct.cstate, %struct.cstate* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %83, i64 %86
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = icmp ne %struct.TYPE_4__* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %80, %72, %64
  %91 = load %struct.cstate*, %struct.cstate** %3, align 8
  %92 = call i32 @die(%struct.cstate* %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %80
  %94 = load %struct.cstate*, %struct.cstate** %3, align 8
  %95 = getelementptr inbounds %struct.cstate, %struct.cstate* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.cstate*, %struct.cstate** %3, align 8
  %100 = getelementptr inbounds %struct.cstate, %struct.cstate* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %100, align 8
  %102 = load %struct.cstate*, %struct.cstate** %3, align 8
  %103 = getelementptr inbounds %struct.cstate, %struct.cstate* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %104
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 2
  store %struct.TYPE_4__* %106, %struct.TYPE_4__** %108, align 8
  %109 = load %struct.cstate*, %struct.cstate** %3, align 8
  %110 = call i32 @next(%struct.cstate* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %111, %struct.TYPE_4__** %2, align 8
  br label %228

112:                                              ; preds = %58
  %113 = load %struct.cstate*, %struct.cstate** %3, align 8
  %114 = call i64 @accept(%struct.cstate* %113, i8 signext 46)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load %struct.cstate*, %struct.cstate** %3, align 8
  %118 = load i32, i32* @P_ANY, align 4
  %119 = call %struct.TYPE_4__* @newnode(%struct.cstate* %117, i32 %118)
  store %struct.TYPE_4__* %119, %struct.TYPE_4__** %2, align 8
  br label %228

120:                                              ; preds = %112
  %121 = load %struct.cstate*, %struct.cstate** %3, align 8
  %122 = call i64 @accept(%struct.cstate* %121, i8 signext 40)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %164

124:                                              ; preds = %120
  %125 = load %struct.cstate*, %struct.cstate** %3, align 8
  %126 = load i32, i32* @P_PAR, align 4
  %127 = call %struct.TYPE_4__* @newnode(%struct.cstate* %125, i32 %126)
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %4, align 8
  %128 = load %struct.cstate*, %struct.cstate** %3, align 8
  %129 = getelementptr inbounds %struct.cstate, %struct.cstate* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MAXSUB, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load %struct.cstate*, %struct.cstate** %3, align 8
  %135 = call i32 @die(%struct.cstate* %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133, %124
  %137 = load %struct.cstate*, %struct.cstate** %3, align 8
  %138 = getelementptr inbounds %struct.cstate, %struct.cstate* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %138, align 8
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store i64 %139, i64* %142, align 8
  %143 = load %struct.cstate*, %struct.cstate** %3, align 8
  %144 = call i8* @parsealt(%struct.cstate* %143)
  %145 = bitcast i8* %144 to %struct.TYPE_4__*
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 2
  store %struct.TYPE_4__* %145, %struct.TYPE_4__** %147, align 8
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %149 = load %struct.cstate*, %struct.cstate** %3, align 8
  %150 = getelementptr inbounds %struct.cstate, %struct.cstate* %149, i32 0, i32 3
  %151 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %150, align 8
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %151, i64 %154
  store %struct.TYPE_4__* %148, %struct.TYPE_4__** %155, align 8
  %156 = load %struct.cstate*, %struct.cstate** %3, align 8
  %157 = call i64 @accept(%struct.cstate* %156, i8 signext 41)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %136
  %160 = load %struct.cstate*, %struct.cstate** %3, align 8
  %161 = call i32 @die(%struct.cstate* %160, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %162

162:                                              ; preds = %159, %136
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %163, %struct.TYPE_4__** %2, align 8
  br label %228

164:                                              ; preds = %120
  %165 = load %struct.cstate*, %struct.cstate** %3, align 8
  %166 = load i8, i8* @L_NC, align 1
  %167 = call i64 @accept(%struct.cstate* %165, i8 signext %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %164
  %170 = load %struct.cstate*, %struct.cstate** %3, align 8
  %171 = call i8* @parsealt(%struct.cstate* %170)
  %172 = bitcast i8* %171 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %172, %struct.TYPE_4__** %4, align 8
  %173 = load %struct.cstate*, %struct.cstate** %3, align 8
  %174 = call i64 @accept(%struct.cstate* %173, i8 signext 41)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %169
  %177 = load %struct.cstate*, %struct.cstate** %3, align 8
  %178 = call i32 @die(%struct.cstate* %177, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %169
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %180, %struct.TYPE_4__** %2, align 8
  br label %228

181:                                              ; preds = %164
  %182 = load %struct.cstate*, %struct.cstate** %3, align 8
  %183 = load i8, i8* @L_PLA, align 1
  %184 = call i64 @accept(%struct.cstate* %182, i8 signext %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = load %struct.cstate*, %struct.cstate** %3, align 8
  %188 = load i32, i32* @P_PLA, align 4
  %189 = call %struct.TYPE_4__* @newnode(%struct.cstate* %187, i32 %188)
  store %struct.TYPE_4__* %189, %struct.TYPE_4__** %4, align 8
  %190 = load %struct.cstate*, %struct.cstate** %3, align 8
  %191 = call i8* @parsealt(%struct.cstate* %190)
  %192 = bitcast i8* %191 to %struct.TYPE_4__*
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store %struct.TYPE_4__* %192, %struct.TYPE_4__** %194, align 8
  %195 = load %struct.cstate*, %struct.cstate** %3, align 8
  %196 = call i64 @accept(%struct.cstate* %195, i8 signext 41)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %186
  %199 = load %struct.cstate*, %struct.cstate** %3, align 8
  %200 = call i32 @die(%struct.cstate* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %186
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %202, %struct.TYPE_4__** %2, align 8
  br label %228

203:                                              ; preds = %181
  %204 = load %struct.cstate*, %struct.cstate** %3, align 8
  %205 = load i8, i8* @L_NLA, align 1
  %206 = call i64 @accept(%struct.cstate* %204, i8 signext %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %203
  %209 = load %struct.cstate*, %struct.cstate** %3, align 8
  %210 = load i32, i32* @P_NLA, align 4
  %211 = call %struct.TYPE_4__* @newnode(%struct.cstate* %209, i32 %210)
  store %struct.TYPE_4__* %211, %struct.TYPE_4__** %4, align 8
  %212 = load %struct.cstate*, %struct.cstate** %3, align 8
  %213 = call i8* @parsealt(%struct.cstate* %212)
  %214 = bitcast i8* %213 to %struct.TYPE_4__*
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  store %struct.TYPE_4__* %214, %struct.TYPE_4__** %216, align 8
  %217 = load %struct.cstate*, %struct.cstate** %3, align 8
  %218 = call i64 @accept(%struct.cstate* %217, i8 signext 41)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %208
  %221 = load %struct.cstate*, %struct.cstate** %3, align 8
  %222 = call i32 @die(%struct.cstate* %221, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %223

223:                                              ; preds = %220, %208
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %224, %struct.TYPE_4__** %2, align 8
  br label %228

225:                                              ; preds = %203
  %226 = load %struct.cstate*, %struct.cstate** %3, align 8
  %227 = call i32 @die(%struct.cstate* %226, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  br label %228

228:                                              ; preds = %225, %223, %201, %179, %162, %116, %93, %46, %28, %10
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %229
}

declare dso_local %struct.TYPE_4__* @newnode(%struct.cstate*, i32) #1

declare dso_local i32 @next(%struct.cstate*) #1

declare dso_local i32 @die(%struct.cstate*, i8*) #1

declare dso_local i64 @accept(%struct.cstate*, i8 signext) #1

declare dso_local i8* @parsealt(%struct.cstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
