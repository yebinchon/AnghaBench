; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_qname.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/xmllite/extr_reader.c_reader_parse_qname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64* }
%struct.TYPE_17__ = type { i64, i64 }

@XmlReadResume_Name = common dso_local global i64 0, align 8
@NC_E_QNAMECHARACTER = common dso_local global i32 0, align 4
@XmlReadResume_Local = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@E_PENDING = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"qname %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ncname %s\0A\00", align 1
@S_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*)* @reader_parse_qname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reader_parse_qname(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* @XmlReadResume_Name, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @XmlReadResume_Name, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %28 = call i8* @reader_get_ptr(%struct.TYPE_16__* %27)
  store i8* %28, i8** %10, align 8
  br label %47

29:                                               ; preds = %4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = call i8* @reader_get_ptr(%struct.TYPE_16__* %30)
  store i8* %31, i8** %10, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = call i64 @reader_get_cur(%struct.TYPE_16__* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @XmlReadResume_Name, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %34, i64* %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8, i8* %40, align 1
  %42 = call i64 @is_ncnamechar(i8 signext %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %29
  %45 = load i32, i32* @NC_E_QNAMECHARACTER, align 4
  store i32 %45, i32* %5, align 4
  br label %210

46:                                               ; preds = %29
  br label %47

47:                                               ; preds = %46, %20
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* @XmlReadResume_Local, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %85

55:                                               ; preds = %47
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = call i32 @reader_parse_local(%struct.TYPE_16__* %56, %struct.TYPE_17__* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i64 @FAILED(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %210

65:                                               ; preds = %55
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* @XmlReadResume_Name, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @XmlReadResume_Name, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %74, %80
  %82 = sub nsw i64 %81, 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %84 = call i32 @reader_init_strvalue(i64 %71, i64 %82, %struct.TYPE_17__* %83)
  br label %148

85:                                               ; preds = %47
  br label %86

86:                                               ; preds = %91, %85
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = call i64 @is_ncnamechar(i8 signext %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = call i32 @reader_skipn(%struct.TYPE_16__* %92, i32 1)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %95 = call i8* @reader_get_ptr(%struct.TYPE_16__* %94)
  store i8* %95, i8** %10, align 8
  br label %86

96:                                               ; preds = %86
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = call i64 @is_reader_pending(%struct.TYPE_16__* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @E_PENDING, align 4
  store i32 %101, i32* %5, align 4
  br label %210

102:                                              ; preds = %96
  %103 = load i8*, i8** %10, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 58
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %110 = call i64 @reader_get_cur(%struct.TYPE_16__* %109)
  %111 = load i64, i64* %11, align 8
  %112 = sub nsw i64 %110, %111
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %114 = call i32 @reader_init_strvalue(i64 %108, i64 %112, %struct.TYPE_17__* %113)
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %116 = call i32 @reader_skipn(%struct.TYPE_16__* %115, i32 1)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = load i32, i32* @TRUE, align 4
  %120 = call i32 @reader_parse_local(%struct.TYPE_16__* %117, %struct.TYPE_17__* %118, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i64 @FAILED(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %107
  %125 = load i32, i32* %12, align 4
  store i32 %125, i32* %5, align 4
  br label %210

126:                                              ; preds = %107
  br label %147

127:                                              ; preds = %102
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i64, i64* @XmlReadResume_Name, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %135 = call i64 @reader_get_cur(%struct.TYPE_16__* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* @XmlReadResume_Name, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %135, %141
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %144 = call i32 @reader_init_strvalue(i64 %133, i64 %142, %struct.TYPE_17__* %143)
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %146 = call i32 @reader_init_strvalue(i64 0, i64 0, %struct.TYPE_17__* %145)
  br label %147

147:                                              ; preds = %127, %126
  br label %148

148:                                              ; preds = %147, %65
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %148
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = call i32 @debug_strval(%struct.TYPE_16__* %154, %struct.TYPE_17__* %155)
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %159 = call i32 @debug_strval(%struct.TYPE_16__* %157, %struct.TYPE_17__* %158)
  %160 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %156, i32 %159)
  br label %166

161:                                              ; preds = %148
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %164 = call i32 @debug_strval(%struct.TYPE_16__* %162, %struct.TYPE_17__* %163)
  %165 = call i32 (i8*, i32, ...) @TRACE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %161, %153
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  br label %179

175:                                              ; preds = %166
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  br label %179

179:                                              ; preds = %175, %171
  %180 = phi i64 [ %174, %171 ], [ %178, %175 ]
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  br label %191

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190, %185
  %192 = phi i64 [ %189, %185 ], [ 0, %190 ]
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %198 = call i32 @reader_init_strvalue(i64 %180, i64 %196, %struct.TYPE_17__* %197)
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = load i64, i64* @XmlReadResume_Name, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  store i64 0, i64* %203, align 8
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 0
  %206 = load i64*, i64** %205, align 8
  %207 = load i64, i64* @XmlReadResume_Local, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 0, i64* %208, align 8
  %209 = load i32, i32* @S_OK, align 4
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %191, %124, %100, %63, %44
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i8* @reader_get_ptr(%struct.TYPE_16__*) #1

declare dso_local i64 @reader_get_cur(%struct.TYPE_16__*) #1

declare dso_local i64 @is_ncnamechar(i8 signext) #1

declare dso_local i32 @reader_parse_local(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i64 @FAILED(i32) #1

declare dso_local i32 @reader_init_strvalue(i64, i64, %struct.TYPE_17__*) #1

declare dso_local i32 @reader_skipn(%struct.TYPE_16__*, i32) #1

declare dso_local i64 @is_reader_pending(%struct.TYPE_16__*) #1

declare dso_local i32 @TRACE(i8*, i32, ...) #1

declare dso_local i32 @debug_strval(%struct.TYPE_16__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
