; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_clr_class_elem.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/rtl/extr_actctx.c_parse_clr_class_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assembly = type { i32 }
%struct.actctx_loader = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.entity = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i8*, i8*, i32, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION = common dso_local global i32 0, align 4
@g_nameW = common dso_local global i32 0, align 4
@clsidW = common dso_local global i32 0, align 4
@progidW = common dso_local global i32 0, align 4
@tlbidW = common dso_local global i32 0, align 4
@threadingmodelW = common dso_local global i32 0, align 4
@runtimeVersionW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unknown attr %wZ=%wZ\0A\00", align 1
@SERVERREDIRECT_SECTION = common dso_local global i32 0, align 4
@PROGIDREDIRECT_SECTION = common dso_local global i32 0, align 4
@clrClassW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown elem %wZ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.assembly*, %struct.actctx_loader*)* @parse_clr_class_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_clr_class_elem(i32* %0, %struct.assembly* %1, %struct.actctx_loader* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.assembly*, align 8
  %7 = alloca %struct.actctx_loader*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.entity*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.assembly* %1, %struct.assembly** %6, align 8
  store %struct.actctx_loader* %2, %struct.actctx_loader** %7, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* @TRUE, align 8
  store i64 %19, i64* %13, align 8
  %20 = load %struct.assembly*, %struct.assembly** %6, align 8
  %21 = getelementptr inbounds %struct.assembly, %struct.assembly* %20, i32 0, i32 0
  %22 = load i32, i32* @ACTIVATION_CONTEXT_SECTION_COM_SERVER_REDIRECTION, align 4
  %23 = call %struct.entity* @add_entity(i32* %21, i32 %22)
  store %struct.entity* %23, %struct.entity** %14, align 8
  %24 = load %struct.entity*, %struct.entity** %14, align 8
  %25 = icmp ne %struct.entity* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %4, align 8
  br label %205

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %122, %28
  %30 = load i32*, i32** %5, align 8
  %31 = call i64 @next_xml_attr(i32* %30, i32* %8, i32* %9, i64* %12, i64* %11)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %123

33:                                               ; preds = %29
  %34 = load i32, i32* @g_nameW, align 4
  %35 = call i64 @xmlstr_cmp(i32* %8, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = call i8* @xmlstrdupW(i32* %9)
  %39 = load %struct.entity*, %struct.entity** %14, align 8
  %40 = getelementptr inbounds %struct.entity, %struct.entity* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 6
  store i8* %38, i8** %42, align 8
  %43 = icmp ne i8* %38, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %4, align 8
  br label %205

46:                                               ; preds = %37
  br label %122

47:                                               ; preds = %33
  %48 = load i32, i32* @clsidW, align 4
  %49 = call i64 @xmlstr_cmp(i32* %8, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = call i8* @xmlstrdupW(i32* %9)
  %53 = load %struct.entity*, %struct.entity** %14, align 8
  %54 = getelementptr inbounds %struct.entity, %struct.entity* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  store i8* %52, i8** %56, align 8
  %57 = icmp ne i8* %52, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i64, i64* @FALSE, align 8
  store i64 %59, i64* %4, align 8
  br label %205

60:                                               ; preds = %51
  br label %121

61:                                               ; preds = %47
  %62 = load i32, i32* @progidW, align 4
  %63 = call i64 @xmlstr_cmp(i32* %8, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %61
  %66 = call i8* @xmlstrdupW(i32* %9)
  %67 = load %struct.entity*, %struct.entity** %14, align 8
  %68 = getelementptr inbounds %struct.entity, %struct.entity* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i8* %66, i8** %70, align 8
  %71 = icmp ne i8* %66, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* @FALSE, align 8
  store i64 %73, i64* %4, align 8
  br label %205

74:                                               ; preds = %65
  br label %120

75:                                               ; preds = %61
  %76 = load i32, i32* @tlbidW, align 4
  %77 = call i64 @xmlstr_cmp(i32* %8, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %75
  %80 = call i8* @xmlstrdupW(i32* %9)
  %81 = load %struct.entity*, %struct.entity** %14, align 8
  %82 = getelementptr inbounds %struct.entity, %struct.entity* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  store i8* %80, i8** %84, align 8
  %85 = icmp ne i8* %80, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = load i64, i64* @FALSE, align 8
  store i64 %87, i64* %4, align 8
  br label %205

88:                                               ; preds = %79
  br label %119

89:                                               ; preds = %75
  %90 = load i32, i32* @threadingmodelW, align 4
  %91 = call i64 @xmlstr_cmp(i32* %8, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = call i32 @parse_com_class_threadingmodel(i32* %9)
  %95 = load %struct.entity*, %struct.entity** %14, align 8
  %96 = getelementptr inbounds %struct.entity, %struct.entity* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store i32 %94, i32* %98, align 8
  br label %118

99:                                               ; preds = %89
  %100 = load i32, i32* @runtimeVersionW, align 4
  %101 = call i64 @xmlstr_cmp(i32* %8, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %99
  %104 = call i8* @xmlstrdupW(i32* %9)
  %105 = load %struct.entity*, %struct.entity** %14, align 8
  %106 = getelementptr inbounds %struct.entity, %struct.entity* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i8* %104, i8** %108, align 8
  %109 = icmp ne i8* %104, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load i64, i64* @FALSE, align 8
  store i64 %111, i64* %4, align 8
  br label %205

112:                                              ; preds = %103
  br label %117

113:                                              ; preds = %99
  %114 = call i32 @xmlstr2unicode(i32* %8)
  store i32 %114, i32* %15, align 4
  %115 = call i32 @xmlstr2unicode(i32* %9)
  store i32 %115, i32* %16, align 4
  %116 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %15, i32* %16)
  br label %117

117:                                              ; preds = %113, %112
  br label %118

118:                                              ; preds = %117, %93
  br label %119

119:                                              ; preds = %118, %88
  br label %120

120:                                              ; preds = %119, %74
  br label %121

121:                                              ; preds = %120, %60
  br label %122

122:                                              ; preds = %121, %46
  br label %29

123:                                              ; preds = %29
  %124 = load i64, i64* %12, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i64, i64* @FALSE, align 8
  store i64 %127, i64* %4, align 8
  br label %205

128:                                              ; preds = %123
  %129 = load i32, i32* @SERVERREDIRECT_SECTION, align 4
  %130 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %131 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %130, i32 0, i32 0
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  %136 = load %struct.entity*, %struct.entity** %14, align 8
  %137 = getelementptr inbounds %struct.entity, %struct.entity* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %150

142:                                              ; preds = %128
  %143 = load i32, i32* @PROGIDREDIRECT_SECTION, align 4
  %144 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %145 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %144, i32 0, i32 0
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %143
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %142, %128
  %151 = load i64, i64* %11, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %150
  %154 = load i64, i64* @TRUE, align 8
  store i64 %154, i64* %4, align 8
  br label %205

155:                                              ; preds = %150
  br label %156

156:                                              ; preds = %186, %155
  %157 = load i64, i64* %13, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %156
  %160 = load i32*, i32** %5, align 8
  %161 = call i64 @next_xml_elem(i32* %160, i32* %10)
  store i64 %161, i64* %13, align 8
  %162 = icmp ne i64 %161, 0
  br label %163

163:                                              ; preds = %159, %156
  %164 = phi i1 [ false, %156 ], [ %162, %159 ]
  br i1 %164, label %165, label %187

165:                                              ; preds = %163
  %166 = load i32, i32* @clrClassW, align 4
  %167 = call i64 @xmlstr_cmp_end(i32* %10, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load i32*, i32** %5, align 8
  %171 = call i64 @parse_end_element(i32* %170)
  store i64 %171, i64* %13, align 8
  br label %187

172:                                              ; preds = %165
  %173 = load i32, i32* @progidW, align 4
  %174 = call i64 @xmlstr_cmp(i32* %10, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %172
  %177 = load i32*, i32** %5, align 8
  %178 = load %struct.entity*, %struct.entity** %14, align 8
  %179 = call i64 @parse_com_class_progid(i32* %177, %struct.entity* %178)
  store i64 %179, i64* %13, align 8
  br label %185

180:                                              ; preds = %172
  %181 = call i32 @xmlstr2unicode(i32* %10)
  store i32 %181, i32* %17, align 4
  %182 = call i32 (i8*, i32*, ...) @DPRINT1(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %17)
  %183 = load i32*, i32** %5, align 8
  %184 = call i64 @parse_unknown_elem(i32* %183, i32* %10)
  store i64 %184, i64* %13, align 8
  br label %185

185:                                              ; preds = %180, %176
  br label %186

186:                                              ; preds = %185
  br label %156

187:                                              ; preds = %169, %163
  %188 = load %struct.entity*, %struct.entity** %14, align 8
  %189 = getelementptr inbounds %struct.entity, %struct.entity* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %187
  %196 = load i32, i32* @PROGIDREDIRECT_SECTION, align 4
  %197 = load %struct.actctx_loader*, %struct.actctx_loader** %7, align 8
  %198 = getelementptr inbounds %struct.actctx_loader, %struct.actctx_loader* %197, i32 0, i32 0
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %195, %187
  %204 = load i64, i64* %13, align 8
  store i64 %204, i64* %4, align 8
  br label %205

205:                                              ; preds = %203, %153, %126, %110, %86, %72, %58, %44, %26
  %206 = load i64, i64* %4, align 8
  ret i64 %206
}

declare dso_local %struct.entity* @add_entity(i32*, i32) #1

declare dso_local i64 @next_xml_attr(i32*, i32*, i32*, i64*, i64*) #1

declare dso_local i64 @xmlstr_cmp(i32*, i32) #1

declare dso_local i8* @xmlstrdupW(i32*) #1

declare dso_local i32 @parse_com_class_threadingmodel(i32*) #1

declare dso_local i32 @xmlstr2unicode(i32*) #1

declare dso_local i32 @DPRINT1(i8*, i32*, ...) #1

declare dso_local i64 @next_xml_elem(i32*, i32*) #1

declare dso_local i64 @xmlstr_cmp_end(i32*, i32) #1

declare dso_local i64 @parse_end_element(i32*) #1

declare dso_local i64 @parse_com_class_progid(i32*, %struct.entity*) #1

declare dso_local i64 @parse_unknown_elem(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
