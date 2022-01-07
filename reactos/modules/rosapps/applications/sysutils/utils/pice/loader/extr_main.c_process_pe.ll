; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_process_pe.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/sysutils/utils/pice/loader/extr_main.c_process_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@IMAGE_DOS_SIGNATURE = common dso_local global i64 0, align 8
@IMAGE_NT_SIGNATURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c".dbg\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"LOADER: creating symbol file %s for %s\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@CREATE_ALWAYS = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"NumberOfSections: %d, size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"LOADER: creation of symbol file %s failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"LOADER: file %s has no data inside symbol tables\0A\00", align 1
@ulGlobalVerbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [48 x i8] c"LOADER: - symbol table is empty or not present\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"LOADER: - string table is empty or not present\0A\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"LOADER: file %s does not have a symbol table\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"LOADER: file %s is not an ELF binary\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_pe(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca [2048 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %21, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %24, %struct.TYPE_7__** %9, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = ptrtoint i8* %25 to i32
  %27 = sext i32 %26 to i64
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = inttoptr i64 %31 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %10, align 8
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @IMAGE_DOS_SIGNATURE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %188

38:                                               ; preds = %4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %188

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IMAGE_NT_SIGNATURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %188

49:                                               ; preds = %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %184

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %16, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %14, align 4
  %69 = load i8*, i8** %16, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %15, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = call i32 @IMAGE_FIRST_SECTION(%struct.TYPE_6__* %79)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @find_stab_sections(i8* %78, i32 %80, i32 %84, i64* %12, i32* %13, i8** %11, i32* %20)
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %160

88:                                               ; preds = %55
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %160

91:                                               ; preds = %88
  %92 = load i8*, i8** %11, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %160

94:                                               ; preds = %91
  %95 = load i32, i32* %20, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %160

97:                                               ; preds = %94
  %98 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strcpy(i8* %98, i8* %99)
  %101 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %102 = call i8* @strchr(i8* %101, i8 signext 46)
  store i8* %102, i8** %22, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i8*, i8** %22, align 8
  store i8 0, i8* %105, align 1
  %106 = load i8*, i8** %22, align 8
  %107 = call i32 @strcat(i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %111

108:                                              ; preds = %97
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %110 = call i32 @strcat(i8* %109, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %104
  %112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %113 = load i8*, i8** %5, align 8
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %112, i8* %113)
  %115 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %116 = load i32, i32* @GENERIC_READ, align 4
  %117 = load i32, i32* @GENERIC_WRITE, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @CREATE_ALWAYS, align 4
  %120 = call i64 @CreateFile(i8* %115, i32 %118, i32 0, i32* null, i32 %119, i32 0, i32 0)
  store i64 %120, i64* %18, align 8
  %121 = load i64, i64* %18, align 8
  %122 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %156

124:                                              ; preds = %111
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %128, i64 4)
  %130 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %131 = load i64, i64* %18, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %133 = call i32 @IMAGE_FIRST_SECTION(%struct.TYPE_6__* %132)
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = mul i64 %138, 4
  %140 = trunc i64 %139 to i32
  %141 = load i8*, i8** %7, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load i32, i32* %13, align 4
  %144 = load i8*, i8** %11, align 8
  %145 = load i32, i32* %20, align 4
  %146 = load i8*, i8** %16, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = load i8*, i8** %15, align 8
  %152 = load i32, i32* %19, align 4
  %153 = call i32 @process_stabs(i8* %130, i64 %131, i32 %133, i32 %140, i8* %141, i64 %142, i32 %143, i8* %144, i32 %145, i8* %146, i32 %150, i8* %151, i32 %152)
  %154 = load i64, i64* %18, align 8
  %155 = call i32 @CloseHandle(i64 %154)
  br label %159

156:                                              ; preds = %111
  %157 = getelementptr inbounds [2048 x i8], [2048 x i8]* %17, i64 0, i64 0
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* %157)
  store i32 2, i32* %21, align 4
  br label %159

159:                                              ; preds = %156, %124
  br label %183

160:                                              ; preds = %94, %91, %88, %55
  %161 = load i8*, i8** %5, align 8
  %162 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i8* %161)
  %163 = load i64, i64* @ulGlobalVerbose, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %160
  %166 = load i64, i64* %12, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %13, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %168, %165
  %172 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  br label %173

173:                                              ; preds = %171, %168
  %174 = load i8*, i8** %11, align 8
  %175 = icmp ne i8* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176, %173
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %176
  br label %182

182:                                              ; preds = %181, %160
  store i32 2, i32* %21, align 4
  br label %183

183:                                              ; preds = %182, %159
  br label %187

184:                                              ; preds = %49
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %185)
  store i32 2, i32* %21, align 4
  br label %187

187:                                              ; preds = %184, %183
  br label %191

188:                                              ; preds = %43, %38, %4
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i8* %189)
  store i32 1, i32* %21, align 4
  br label %191

191:                                              ; preds = %188, %187
  %192 = load i32, i32* %21, align 4
  ret i32 %192
}

declare dso_local i32 @find_stab_sections(i8*, i32, i32, i64*, i32*, i8**, i32*) #1

declare dso_local i32 @IMAGE_FIRST_SECTION(%struct.TYPE_6__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @CreateFile(i8*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @process_stabs(i8*, i64, i32, i32, i8*, i64, i32, i8*, i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @CloseHandle(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
