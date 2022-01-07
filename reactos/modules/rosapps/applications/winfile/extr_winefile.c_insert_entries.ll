; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_insert_entries.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_insert_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_8__*, i64, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i8* }

@SW_HIDE = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4
@TF_DIRECTORIES = common dso_local global i32 0, align 4
@TF_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_SYSTEM = common dso_local global i32 0, align 4
@TF_PROGRAMS = common dso_local global i32 0, align 4
@TF_DOCUMENTS = common dso_local global i32 0, align 4
@TF_OTHERS = common dso_local global i32 0, align 4
@LB_INSERTSTRING = common dso_local global i32 0, align 4
@SW_SHOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32)* @insert_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_entries(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %12, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %11, align 4
  store i32 %17, i32* %6, align 4
  br label %220

18:                                               ; preds = %5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SW_HIDE, align 4
  %23 = call i32 @ShowWindow(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %209, %18
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %26 = icmp ne %struct.TYPE_8__* %25, null
  br i1 %26, label %27, label %213

27:                                               ; preds = %24
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %209

41:                                               ; preds = %32, %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %104

49:                                               ; preds = %41
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %49
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 46
  br i1 %62, label %63, label %92

63:                                               ; preds = %54
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %90, label %72

72:                                               ; preds = %63
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 46
  br i1 %80, label %81, label %91

81:                                               ; preds = %72
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81, %63
  br label %209

91:                                               ; preds = %81, %72
  br label %92

92:                                               ; preds = %91, %54, %49
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @TF_DIRECTORIES, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %209

103:                                              ; preds = %97, %92
  br label %104

104:                                              ; preds = %103, %41
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @pattern_imatch(i8* %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %107
  br label %209

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @TF_HIDDEN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %133, label %122

122:                                              ; preds = %117
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @FILE_ATTRIBUTE_HIDDEN, align 4
  %128 = load i32, i32* @FILE_ATTRIBUTE_SYSTEM, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %122
  br label %209

133:                                              ; preds = %122, %117
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @TF_PROGRAMS, align 4
  %136 = load i32, i32* @TF_DOCUMENTS, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @TF_OTHERS, align 4
  %139 = or i32 %137, %138
  %140 = and i32 %134, %139
  %141 = load i32, i32* @TF_PROGRAMS, align 4
  %142 = load i32, i32* @TF_DOCUMENTS, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @TF_OTHERS, align 4
  %145 = or i32 %143, %144
  %146 = icmp ne i32 %140, %145
  br i1 %146, label %147, label %175

147:                                              ; preds = %133
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @get_file_type(i8* %151)
  switch i32 %152, label %167 [
    i32 128, label %153
    i32 129, label %160
  ]

153:                                              ; preds = %147
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @TF_PROGRAMS, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  br label %209

159:                                              ; preds = %153
  br label %174

160:                                              ; preds = %147
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @TF_DOCUMENTS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %209

166:                                              ; preds = %160
  br label %174

167:                                              ; preds = %147
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @TF_OTHERS, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %209

173:                                              ; preds = %167
  br label %174

174:                                              ; preds = %173, %166, %159
  br label %175

175:                                              ; preds = %174, %133
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %11, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %11, align 4
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @LB_INSERTSTRING, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %188 = ptrtoint %struct.TYPE_8__* %187 to i32
  %189 = call i32 @SendMessageW(i32 %184, i32 %185, i32 %186, i32 %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %181
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %194
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %11, align 4
  %207 = call i32 @insert_entries(%struct.TYPE_7__* %200, %struct.TYPE_8__* %203, i32 %204, i32 %205, i32 %206)
  store i32 %207, i32* %11, align 4
  br label %208

208:                                              ; preds = %199, %194, %181
  br label %209

209:                                              ; preds = %208, %172, %165, %158, %132, %115, %102, %90, %40
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 3
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %211, align 8
  store %struct.TYPE_8__* %212, %struct.TYPE_8__** %12, align 8
  br label %24

213:                                              ; preds = %24
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SW_SHOW, align 4
  %218 = call i32 @ShowWindow(i32 %216, i32 %217)
  %219 = load i32, i32* %11, align 4
  store i32 %219, i32* %6, align 4
  br label %220

220:                                              ; preds = %213, %16
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @ShowWindow(i32, i32) #1

declare dso_local i32 @pattern_imatch(i8*, i32) #1

declare dso_local i32 @get_file_type(i8*) #1

declare dso_local i32 @SendMessageW(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
