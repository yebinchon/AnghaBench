; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_nextnode.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_nextnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, %struct.TYPE_18__, i32, i32, i64 }
%struct.TYPE_18__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"detected encoding %s, 0x%08x\0A\00", align 1
@XmlEncoding_Unknown = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@xml_encoding_map = common dso_local global %struct.TYPE_20__* null, align 8
@S_OK = common dso_local global i32 0, align 4
@S_FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"found garbage in the end of XML\0A\00", align 1
@WC_E_SYNTAX = common dso_local global i32 0, align 4
@XmlReadState_EndOfFile = common dso_local global i32 0, align 4
@XmlNodeType_None = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"internal state %d not handled\0A\00", align 1
@E_NOTIMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*)* @reader_parse_nextnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_nextnode(%struct.TYPE_19__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = call i32 @reader_get_nodetype(%struct.TYPE_19__* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = call i32 @is_reader_pending(%struct.TYPE_19__* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 7
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %16 = call i32 @reader_clear_attrs(%struct.TYPE_19__* %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* %4, align 4
  switch i32 %18, label %46 [
    i32 138, label %19
    i32 137, label %22
    i32 136, label %41
  ]

19:                                               ; preds = %17
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = call i32 @reader_dec_depth(%struct.TYPE_19__* %20)
  br label %22

22:                                               ; preds = %17, %19
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 5
  %31 = call i32 @reader_pop_ns_nodes(%struct.TYPE_19__* %28, i32* %30)
  br label %40

32:                                               ; preds = %22
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %34 = call i32 @reader_inc_depth(%struct.TYPE_19__* %33)
  store i32 %34, i32* %5, align 4
  %35 = call i32 @FAILED(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %216

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %27
  br label %47

41:                                               ; preds = %17
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %43 = call i32 @reader_pop_element(%struct.TYPE_19__* %42)
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %45 = call i32 @reader_dec_depth(%struct.TYPE_19__* %44)
  br label %47

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46, %41, %40
  br label %48

48:                                               ; preds = %215, %47
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %209 [
    i32 130, label %52
    i32 128, label %119
    i32 134, label %137
    i32 133, label %157
    i32 132, label %175
    i32 135, label %178
    i32 129, label %181
    i32 131, label %207
  ]

52:                                               ; preds = %48
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @readerinput_growraw(i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @FAILED(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %216

62:                                               ; preds = %52
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @readerinput_detectencoding(i32 %71, i64* %6)
  store i32 %72, i32* %5, align 4
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @XmlEncoding_Unknown, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %84

77:                                               ; preds = %62
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** @xml_encoding_map, align 8
  %79 = load i64, i64* %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @debugstr_w(i32 %82)
  br label %84

84:                                               ; preds = %77, %76
  %85 = phi i8* [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %76 ], [ %83, %77 ]
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @TRACE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %85, i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @FAILED(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %216

93:                                               ; preds = %84
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @readerinput_switchencoding(i32 %96, i64 %97)
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = call i32 @reader_parse_xmldecl(%struct.TYPE_19__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @FAILED(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %93
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %216

106:                                              ; preds = %93
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @readerinput_shrinkraw(i32 %109, i32 -1)
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 128, i32* %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @S_OK, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %216

118:                                              ; preds = %106
  br label %215

119:                                              ; preds = %48
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %121 = call i32 @reader_parse_misc(%struct.TYPE_19__* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @FAILED(i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %119
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %216

127:                                              ; preds = %119
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @S_FALSE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  store i32 134, i32* %133, align 8
  br label %136

134:                                              ; preds = %127
  %135 = load i32, i32* %5, align 4
  store i32 %135, i32* %2, align 4
  br label %216

136:                                              ; preds = %131
  br label %215

137:                                              ; preds = %48
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %139 = call i32 @reader_parse_dtd(%struct.TYPE_19__* %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @FAILED(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %216

145:                                              ; preds = %137
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @S_OK, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  store i32 133, i32* %151, align 8
  %152 = load i32, i32* %5, align 4
  store i32 %152, i32* %2, align 4
  br label %216

153:                                              ; preds = %145
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  store i32 132, i32* %155, align 8
  br label %156

156:                                              ; preds = %153
  br label %215

157:                                              ; preds = %48
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %159 = call i32 @reader_parse_misc(%struct.TYPE_19__* %158)
  store i32 %159, i32* %5, align 4
  %160 = load i32, i32* %5, align 4
  %161 = call i32 @FAILED(i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %2, align 4
  br label %216

165:                                              ; preds = %157
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @S_FALSE, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  store i32 132, i32* %171, align 8
  br label %174

172:                                              ; preds = %165
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %216

174:                                              ; preds = %169
  br label %215

175:                                              ; preds = %48
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %177 = call i32 @reader_parse_element(%struct.TYPE_19__* %176)
  store i32 %177, i32* %2, align 4
  br label %216

178:                                              ; preds = %48
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %180 = call i32 @reader_parse_content(%struct.TYPE_19__* %179)
  store i32 %180, i32* %2, align 4
  br label %216

181:                                              ; preds = %48
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %183 = call i32 @reader_parse_misc(%struct.TYPE_19__* %182)
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @S_FALSE, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %181
  %188 = load i32, i32* %5, align 4
  store i32 %188, i32* %2, align 4
  br label %216

189:                                              ; preds = %181
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %191 = call i32* @reader_get_ptr(%struct.TYPE_19__* %190)
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = call i32 @WARN(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %196 = load i32, i32* @WC_E_SYNTAX, align 4
  store i32 %196, i32* %2, align 4
  br label %216

197:                                              ; preds = %189
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  store i32 131, i32* %199, align 8
  %200 = load i32, i32* @XmlReadState_EndOfFile, align 4
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  %203 = load i32, i32* @XmlNodeType_None, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* %5, align 4
  store i32 %206, i32* %2, align 4
  br label %216

207:                                              ; preds = %48
  %208 = load i32, i32* @S_FALSE, align 4
  store i32 %208, i32* %2, align 4
  br label %216

209:                                              ; preds = %48
  %210 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @FIXME(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @E_NOTIMPL, align 4
  store i32 %214, i32* %2, align 4
  br label %216

215:                                              ; preds = %174, %156, %136, %118
  br label %48

216:                                              ; preds = %209, %207, %197, %194, %187, %178, %175, %172, %163, %149, %143, %134, %125, %116, %104, %91, %60, %37
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @reader_get_nodetype(%struct.TYPE_19__*) #1

declare dso_local i32 @is_reader_pending(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_clear_attrs(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_dec_depth(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_pop_ns_nodes(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @FAILED(i32) #1

declare dso_local i32 @reader_inc_depth(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_pop_element(%struct.TYPE_19__*) #1

declare dso_local i32 @readerinput_growraw(i32) #1

declare dso_local i32 @readerinput_detectencoding(i32, i64*) #1

declare dso_local i32 @TRACE(i8*, i8*, i32) #1

declare dso_local i8* @debugstr_w(i32) #1

declare dso_local i32 @readerinput_switchencoding(i32, i64) #1

declare dso_local i32 @reader_parse_xmldecl(%struct.TYPE_19__*) #1

declare dso_local i32 @readerinput_shrinkraw(i32, i32) #1

declare dso_local i32 @reader_parse_misc(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_parse_dtd(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_parse_element(%struct.TYPE_19__*) #1

declare dso_local i32 @reader_parse_content(%struct.TYPE_19__*) #1

declare dso_local i32* @reader_get_ptr(%struct.TYPE_19__*) #1

declare dso_local i32 @WARN(i8*) #1

declare dso_local i32 @FIXME(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
