; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_pap_mailbox822.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/3rdparty/adns/src/extr_types.c_pap_mailbox822.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@adns_s_invaliddata = common dso_local global i64 0, align 8
@R_NOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\\\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@adns_s_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, i32*, i32, i8**)* @pap_mailbox822 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pap_mailbox822(%struct.TYPE_13__* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %21, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @adns__findlabel_start(i32* %19, i32 %30, i32 -1, %struct.TYPE_14__* %33, i8* %36, i32 %39, i32 %40, i32 %42, i32* %43)
  %45 = call i64 @adns__findlabel_next(i32* %19, i32* %10, i32* %11)
  store i64 %45, i64* %20, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %50 = call i32 @adns__vbuf_appendstr(%struct.TYPE_12__* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %195

51:                                               ; preds = %4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  store i8* %57, i8** %17, align 8
  br label %58

58:                                               ; preds = %99, %51
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %102

62:                                               ; preds = %58
  %63 = load i8*, i8** %17, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %17, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = and i32 %67, -129
  %69 = icmp slt i32 %68, 32
  br i1 %69, label %74, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %14, align 4
  %72 = and i32 %71, -129
  %73 = icmp eq i32 %72, 127
  br i1 %73, label %74, label %76

74:                                               ; preds = %70, %62
  %75 = load i64, i64* @adns_s_invaliddata, align 8
  store i64 %75, i64* %5, align 8
  br label %225

76:                                               ; preds = %70
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %77, 46
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 1, i32* %16, align 4
  br label %98

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 32
  br i1 %85, label %93, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %14, align 4
  %88 = icmp sge i32 %87, 127
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = call i64 @ctype_822special(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89, %86, %83
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %13, align 4
  br label %97

96:                                               ; preds = %89
  store i32 0, i32* %16, align 4
  br label %97

97:                                               ; preds = %96, %93
  br label %98

98:                                               ; preds = %97, %82
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %58

102:                                              ; preds = %58
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %16, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %156

108:                                              ; preds = %105, %102
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %110, %111
  %113 = add nsw i32 %112, 4
  %114 = call i32 @adns__vbuf_ensure(%struct.TYPE_12__* %109, i32 %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %108
  %118 = load i32, i32* @R_NOMEM, align 4
  br label %119

119:                                              ; preds = %117, %108
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %121 = call i32 @adns__vbuf_appendq(%struct.TYPE_12__* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  store i8* %127, i8** %17, align 8
  br label %128

128:                                              ; preds = %148, %119
  %129 = load i32, i32* %12, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %153

132:                                              ; preds = %128
  %133 = load i8*, i8** %17, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = icmp eq i32 %136, 34
  br i1 %137, label %141, label %138

138:                                              ; preds = %132
  %139 = load i32, i32* %14, align 4
  %140 = icmp eq i32 %139, 92
  br i1 %140, label %141, label %144

141:                                              ; preds = %138, %132
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %143 = call i32 @adns__vbuf_appendq(%struct.TYPE_12__* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %146 = load i8*, i8** %17, align 8
  %147 = call i32 @adns__vbuf_appendq(%struct.TYPE_12__* %145, i8* %146, i32 1)
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %12, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = load i8*, i8** %17, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %17, align 8
  br label %128

153:                                              ; preds = %128
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %155 = call i32 @adns__vbuf_appendq(%struct.TYPE_12__* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %171

156:                                              ; preds = %105
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @adns__vbuf_append(%struct.TYPE_12__* %157, i8* %163, i32 %164)
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %15, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %170, label %168

168:                                              ; preds = %156
  %169 = load i32, i32* @R_NOMEM, align 4
  br label %170

170:                                              ; preds = %168, %156
  br label %171

171:                                              ; preds = %170, %153
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %173 = call i32 @adns__vbuf_appendstr(%struct.TYPE_12__* %172, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %178, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @R_NOMEM, align 4
  br label %178

178:                                              ; preds = %176, %171
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i64 @adns__parse_domain_more(i32* %19, i32 %181, %struct.TYPE_14__* %184, %struct.TYPE_12__* %185, i32 0, i8* %188)
  store i64 %189, i64* %20, align 8
  %190 = load i64, i64* %20, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = load i64, i64* %20, align 8
  store i64 %193, i64* %5, align 8
  br label %225

194:                                              ; preds = %178
  br label %195

195:                                              ; preds = %194, %48
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %197, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, 1
  %203 = call i8* @adns__alloc_interim(%struct.TYPE_14__* %198, i64 %202)
  store i8* %203, i8** %18, align 8
  %204 = load i8*, i8** %18, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %195
  %207 = load i32, i32* @R_NOMEM, align 4
  br label %208

208:                                              ; preds = %206, %195
  %209 = load i8*, i8** %18, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @memcpy(i8* %209, i32 %212, i64 %215)
  %217 = load i8*, i8** %18, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  store i8 0, i8* %221, align 1
  %222 = load i8*, i8** %18, align 8
  %223 = load i8**, i8*** %9, align 8
  store i8* %222, i8** %223, align 8
  %224 = load i64, i64* @adns_s_ok, align 8
  store i64 %224, i64* %5, align 8
  br label %225

225:                                              ; preds = %208, %192, %74
  %226 = load i64, i64* %5, align 8
  ret i64 %226
}

declare dso_local i32 @adns__findlabel_start(i32*, i32, i32, %struct.TYPE_14__*, i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @adns__findlabel_next(i32*, i32*, i32*) #1

declare dso_local i32 @adns__vbuf_appendstr(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @ctype_822special(i32) #1

declare dso_local i32 @adns__vbuf_ensure(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @adns__vbuf_appendq(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @adns__vbuf_append(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i64 @adns__parse_domain_more(i32*, i32, %struct.TYPE_14__*, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i8* @adns__alloc_interim(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
