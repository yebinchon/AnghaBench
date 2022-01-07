; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_ProcessMessage.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/msi/extr_package.c_MSI_ProcessMessage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i32 }

@MSI_NULL_INTEGER = common dso_local global i32 0, align 4
@MSIERR_INSTALLERROR = common dso_local global i32 0, align 4
@szEmpty = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@MSIERR_ACTIONSTART = common dso_local global i32 0, align 4
@MSI_ProcessMessage.template_s = internal constant [11 x i8] c"{{%s: }}%s\00", align 1
@MSIERR_COMMONDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSI_ProcessMessage(%struct.TYPE_4__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, -16777216
  switch i32 %16, label %222 [
    i32 132, label %17
    i32 133, label %17
    i32 128, label %17
    i32 129, label %17
    i32 131, label %17
    i32 130, label %17
    i32 135, label %131
    i32 136, label %168
    i32 134, label %211
  ]

17:                                               ; preds = %3, %3, %3, %3, %3, %3
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @MSI_RecordGetInteger(i32* %18, i32 1)
  %20 = load i32, i32* @MSI_NULL_INTEGER, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %130

22:                                               ; preds = %17
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @MSI_RecordGetInteger(i32* %23, i32 1)
  store i32 %24, i32* %11, align 4
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @MSI_RecordIsNull(i32* %25, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  %30 = icmp sge i32 %29, 32
  br i1 %30, label %31, label %71

31:                                               ; preds = %28
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i8* @msi_get_error_message(i32 %34, i32 %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %70, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = icmp sge i32 %40, 2000
  br i1 %41, label %42, label %70

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @get_internal_error_message(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %9, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32*, i32** %7, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32 @MSI_RecordSetStringW(i32* %49, i32 0, i8* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_4__* %52, i32 131, i32* %53)
  br label %55

55:                                               ; preds = %48, %42
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MSIERR_INSTALLERROR, align 4
  %60 = call i8* @msi_get_error_message(i32 %58, i32 %59)
  store i8* %60, i8** %9, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @MSI_RecordSetStringW(i32* %61, i32 0, i8* %62)
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_4__* %64, i32 %65, i32* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @msi_free(i8* %68)
  store i32 0, i32* %4, align 4
  br label %227

70:                                               ; preds = %39, %31
  br label %71

71:                                               ; preds = %70, %28
  br label %75

72:                                               ; preds = %22
  %73 = load i32*, i32** %7, align 8
  %74 = call i8* @msi_dup_record_field(i32* %73, i32 0)
  store i8* %74, i8** %9, align 8
  br label %75

75:                                               ; preds = %72, %71
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = ashr i32 %79, 24
  %81 = call i8* @msi_get_error_message(i32 %78, i32 %80)
  store i8* %81, i8** %10, align 8
  %82 = load i8*, i8** %10, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* @szEmpty, align 4
  %86 = call i8* @strdupW(i32 %85)
  store i8* %86, i8** %10, align 8
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = load i32*, i32** %7, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = call i32 @MSI_RecordSetStringW(i32* %91, i32 0, i8* %92)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_4__* %94, i32 %95, i32* %96)
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @msi_free(i8* %98)
  store i32 0, i32* %4, align 4
  br label %227

100:                                              ; preds = %87
  %101 = load i8*, i8** %9, align 8
  %102 = call i64 @strlenW(i8* %101)
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @strlenW(i8* %103)
  %105 = add nsw i64 %102, %104
  %106 = add nsw i64 %105, 1
  %107 = mul i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = call i8* @msi_alloc(i32 %108)
  store i8* %109, i8** %8, align 8
  %110 = load i8*, i8** %8, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %100
  %113 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %113, i32* %4, align 4
  br label %227

114:                                              ; preds = %100
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call i32 @strcpyW(i8* %115, i8* %116)
  %118 = load i8*, i8** %8, align 8
  %119 = load i8*, i8** %9, align 8
  %120 = call i32 @strcatW(i8* %118, i8* %119)
  %121 = load i32*, i32** %7, align 8
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @MSI_RecordSetStringW(i32* %121, i32 0, i8* %122)
  %124 = load i8*, i8** %10, align 8
  %125 = call i32 @msi_free(i8* %124)
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @msi_free(i8* %126)
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @msi_free(i8* %128)
  br label %130

130:                                              ; preds = %114, %17
  br label %222

131:                                              ; preds = %3
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @MSIERR_ACTIONSTART, align 4
  %136 = call i8* @msi_get_error_message(i32 %134, i32 %135)
  store i8* %136, i8** %12, align 8
  %137 = load i32*, i32** %7, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = call i32 @MSI_RecordSetStringW(i32* %137, i32 0, i8* %138)
  %140 = load i8*, i8** %12, align 8
  %141 = call i32 @msi_free(i8* %140)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @msi_free(i8* %144)
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @msi_free(i8* %148)
  %150 = load i32*, i32** %7, align 8
  %151 = call i8* @msi_dup_record_field(i32* %150, i32 1)
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %163, label %158

158:                                              ; preds = %131
  %159 = load i32, i32* @szEmpty, align 4
  %160 = call i8* @strdupW(i32 %159)
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %131
  %164 = load i32*, i32** %7, align 8
  %165 = call i8* @msi_dup_record_field(i32* %164, i32 3)
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  br label %222

168:                                              ; preds = %3
  %169 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %210

173:                                              ; preds = %168
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i8*, i8** %175, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %178, label %210

178:                                              ; preds = %173
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = call i64 @strlenW(i8* %181)
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i64 @strlenW(i8* %185)
  %187 = add nsw i64 %182, %186
  %188 = add nsw i64 %187, 7
  %189 = mul i64 %188, 1
  %190 = trunc i64 %189 to i32
  %191 = call i8* @msi_alloc(i32 %190)
  store i8* %191, i8** %13, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %178
  %195 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %195, i32* %4, align 4
  br label %227

196:                                              ; preds = %178
  %197 = load i8*, i8** %13, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @sprintfW(i8* %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @MSI_ProcessMessage.template_s, i64 0, i64 0), i8* %200, i8* %203)
  %205 = load i32*, i32** %7, align 8
  %206 = load i8*, i8** %13, align 8
  %207 = call i32 @MSI_RecordSetStringW(i32* %205, i32 0, i8* %206)
  %208 = load i8*, i8** %13, align 8
  %209 = call i32 @msi_free(i8* %208)
  br label %210

210:                                              ; preds = %196, %173, %168
  br label %222

211:                                              ; preds = %3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MSIERR_COMMONDATA, align 4
  %216 = call i8* @msi_get_error_message(i32 %214, i32 %215)
  store i8* %216, i8** %14, align 8
  %217 = load i32*, i32** %7, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = call i32 @MSI_RecordSetStringW(i32* %217, i32 0, i8* %218)
  %220 = load i8*, i8** %14, align 8
  %221 = call i32 @msi_free(i8* %220)
  br label %222

222:                                              ; preds = %3, %211, %210, %163, %130
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %224 = load i32, i32* %6, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_4__* %223, i32 %224, i32* %225)
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %222, %194, %112, %90, %55
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @MSI_RecordGetInteger(i32*, i32) #1

declare dso_local i32 @MSI_RecordIsNull(i32*, i32) #1

declare dso_local i8* @msi_get_error_message(i32, i32) #1

declare dso_local i32 @get_internal_error_message(i32) #1

declare dso_local i32 @MSI_RecordSetStringW(i32*, i32, i8*) #1

declare dso_local i32 @MSI_ProcessMessageVerbatim(%struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @msi_free(i8*) #1

declare dso_local i8* @msi_dup_record_field(i32*, i32) #1

declare dso_local i8* @strdupW(i32) #1

declare dso_local i8* @msi_alloc(i32) #1

declare dso_local i64 @strlenW(i8*) #1

declare dso_local i32 @strcpyW(i8*, i8*) #1

declare dso_local i32 @strcatW(i8*, i8*) #1

declare dso_local i32 @sprintfW(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
