; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_omxil_core.c_CreateComponentsList.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_omxil_core.c_CreateComponentsList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@MAX_COMPONENTS_LIST_SIZE = common dso_local global i32 0, align 4
@OMX_MAX_STRINGNAME_SIZE = common dso_local global i32 0, align 4
@OMX_ErrorNone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"component %s\00", align 1
@role_mappings = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"  - role: %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"too many matching components\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"found %i matching components for role %s\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"- %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CreateComponentsList(i32* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %17 = load i32, i32* @MAX_COMPONENTS_LIST_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = load i32, i32* @OMX_MAX_STRINGNAME_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* @OMX_MAX_STRINGNAME_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i8** null, i8*** %11, align 8
  store i32 0, i32* %14, align 4
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %178

28:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %174, %28
  store i32 0, i32* %15, align 4
  %30 = load i32, i32* @OMX_MAX_STRINGNAME_SIZE, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @pf_component_enum(i8* %24, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @OMX_ErrorNone, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %177

37:                                               ; preds = %29
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %69, %37
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @role_mappings, align 8
  %42 = load i32, i32* %16, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %72

48:                                               ; preds = %40
  %49 = load i8*, i8** %5, align 8
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @role_mappings, align 8
  %51 = load i32, i32* %16, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %49, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %48
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @role_mappings, align 8
  %60 = load i32, i32* %16, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %24, i8* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %156

68:                                               ; preds = %58, %48
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %16, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %40

72:                                               ; preds = %40
  %73 = call i32 @pf_get_roles_of_component(i8* %24, i32* %10, i8** null)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @OMX_ErrorNone, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77, %72
  br label %174

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = load i32, i32* @OMX_MAX_STRINGNAME_SIZE, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 8, %85
  %87 = mul i64 %83, %86
  %88 = trunc i64 %87 to i32
  %89 = call i8** @malloc(i32 %88)
  store i8** %89, i8*** %11, align 8
  %90 = load i8**, i8*** %11, align 8
  %91 = icmp ne i8** %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %174

93:                                               ; preds = %81
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %113, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ult i32 %95, %96
  br i1 %97, label %98, label %116

98:                                               ; preds = %94
  %99 = load i8**, i8*** %11, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8*, i8** %99, i64 %101
  %103 = bitcast i8** %102 to i8*
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @OMX_MAX_STRINGNAME_SIZE, align 4
  %106 = mul i32 %104, %105
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = load i8**, i8*** %11, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %108, i8** %112, align 8
  br label %113

113:                                              ; preds = %98
  %114 = load i32, i32* %13, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %94

116:                                              ; preds = %94
  %117 = load i8**, i8*** %11, align 8
  %118 = call i32 @pf_get_roles_of_component(i8* %24, i32* %10, i8** %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @OMX_ErrorNone, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %122, %116
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %146, %123
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ult i32 %125, %126
  br i1 %127, label %128, label %149

128:                                              ; preds = %124
  %129 = load i32*, i32** %4, align 8
  %130 = load i8**, i8*** %11, align 8
  %131 = load i32, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %130, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %134)
  %136 = load i8**, i8*** %11, align 8
  %137 = load i32, i32* %13, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = load i8*, i8** %5, align 8
  %142 = call i32 @strcmp(i8* %140, i8* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %128
  store i32 1, i32* %15, align 4
  br label %145

145:                                              ; preds = %144, %128
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %13, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %124

149:                                              ; preds = %124
  %150 = load i8**, i8*** %11, align 8
  %151 = call i32 @free(i8** %150)
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  br label %174

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %67
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* @MAX_COMPONENTS_LIST_SIZE, align 4
  %159 = icmp uge i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32*, i32** %4, align 8
  %162 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %174

163:                                              ; preds = %156
  %164 = load i8*, i8** %6, align 8
  %165 = load i32, i32* %14, align 4
  %166 = zext i32 %165 to i64
  %167 = mul nsw i64 %166, %20
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = load i32, i32* @OMX_MAX_STRINGNAME_SIZE, align 4
  %170 = sub nsw i32 %169, 1
  %171 = call i32 @strncpy(i8* %168, i8* %24, i32 %170)
  %172 = load i32, i32* %14, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %174

174:                                              ; preds = %163, %160, %154, %92, %80
  %175 = load i32, i32* %12, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %29

177:                                              ; preds = %36
  br label %178

178:                                              ; preds = %177, %27
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %14, align 4
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %179, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %180, i8* %181)
  store i32 0, i32* %12, align 4
  br label %183

183:                                              ; preds = %195, %178
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load i32*, i32** %4, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* %12, align 4
  %191 = zext i32 %190 to i64
  %192 = mul nsw i64 %191, %20
  %193 = getelementptr inbounds i8, i8* %189, i64 %192
  %194 = call i32 (i32*, i8*, ...) @msg_Dbg(i32* %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %12, align 4
  %197 = add i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %183

198:                                              ; preds = %183
  %199 = load i32, i32* %14, align 4
  %200 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %200)
  ret i32 %199
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pf_component_enum(i8*, i32, i32) #2

declare dso_local i32 @msg_Dbg(i32*, i8*, ...) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @pf_get_roles_of_component(i8*, i32*, i8**) #2

declare dso_local i8** @malloc(i32) #2

declare dso_local i32 @free(i8**) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
