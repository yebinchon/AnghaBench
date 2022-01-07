; ModuleID = '/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz2.c_LLVMFuzzerInitialize.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/test/extr_dbfuzz2.c_LLVMFuzzerInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i64, i64 }

@eVerbosity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"vdbe-debug\00", align 1
@bVdbeDebug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"missing argument to %s\0A\00", align 1
@mxCb = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"memtrace\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"max-db-size\00", align 1
@szMax = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"max-stack\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"max-data\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"max-as\00", align 1
@RLIMIT_STACK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"RLIMIT_STACK\00", align 1
@RLIMIT_DATA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"RLIMIT_DATA\00", align 1
@RLIMIT_AS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"RLIMIT_AS\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%s changed from %d to %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LLVMFuzzerInitialize(i32* %0, i8*** %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8***, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.rlimit, align 8
  %12 = alloca %struct.rlimit, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8*** %1, i8**** %4, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i8***, i8**** %4, align 8
  %18 = load i8**, i8*** %17, align 8
  store i8** %18, i8*** %9, align 8
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %19

19:                                               ; preds = %211, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %214

23:                                               ; preds = %19
  %24 = load i8**, i8*** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 45
  br i1 %33, label %34, label %200

34:                                               ; preds = %23
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 45
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %42, %34
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 118
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load i8*, i8** %10, align 8
  %53 = call i32 @numberOfVChar(i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @eVerbosity, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* @eVerbosity, align 4
  br label %211

59:                                               ; preds = %51, %45
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* @bVdbeDebug, align 4
  br label %211

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %68
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8**, i8*** %9, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %79)
  %81 = call i32 @exit(i32 1) #3
  unreachable

82:                                               ; preds = %68
  %83 = load i8**, i8*** %9, align 8
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %83, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @strtol(i8* %88, i32 0, i32 0)
  store i8* %89, i8** @mxCb, align 8
  br label %211

90:                                               ; preds = %64
  %91 = load i8*, i8** %10, align 8
  %92 = call i64 @strcmp(i8* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @stdout, align 4
  %96 = call i32 @sqlite3MemTraceActivate(i32 %95)
  br label %211

97:                                               ; preds = %90
  %98 = load i8*, i8** %10, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 1, i32* @bVdbeDebug, align 4
  br label %211

102:                                              ; preds = %97
  %103 = load i8*, i8** %10, align 8
  %104 = call i64 @strcmp(i8* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %102
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  %109 = load i32, i32* %8, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %106
  %112 = load i32, i32* @stderr, align 4
  %113 = load i8**, i8*** %9, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8*, i8** %113, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %117)
  %119 = call i32 @exit(i32 1) #3
  unreachable

120:                                              ; preds = %106
  %121 = load i8**, i8*** %9, align 8
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = call i8* @strtol(i8* %126, i32 0, i32 0)
  store i8* %127, i8** @szMax, align 8
  br label %211

128:                                              ; preds = %102
  %129 = load i8*, i8** %10, align 8
  %130 = call i64 @strcmp(i8* %129, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i8*, i8** %10, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i8*, i8** %10, align 8
  %138 = call i64 @strcmp(i8* %137, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %199

140:                                              ; preds = %136, %132, %128
  %141 = load i32, i32* @RLIMIT_STACK, align 4
  store i32 %141, i32* %13, align 4
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %14, align 8
  %142 = load i32, i32* %5, align 4
  %143 = add nsw i32 %142, 1
  %144 = load i32, i32* %8, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %140
  %147 = load i32, i32* @stderr, align 4
  %148 = load i8**, i8*** %9, align 8
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8*, i8** %148, i64 %150
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @fprintf(i32 %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %152)
  %154 = call i32 @exit(i32 1) #3
  unreachable

155:                                              ; preds = %140
  %156 = load i8*, i8** %10, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 100
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i32, i32* @RLIMIT_DATA, align 4
  store i32 %162, i32* %13, align 4
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8** %14, align 8
  br label %163

163:                                              ; preds = %161, %155
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 4
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 97
  br i1 %168, label %169, label %171

169:                                              ; preds = %163
  %170 = load i32, i32* @RLIMIT_AS, align 4
  store i32 %170, i32* %13, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8** %14, align 8
  br label %171

171:                                              ; preds = %169, %163
  %172 = call i32 @memset(%struct.rlimit* %11, i32 0, i32 16)
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @getrlimit(i32 %173, %struct.rlimit* %11)
  %175 = load i8**, i8*** %9, align 8
  %176 = load i32, i32* %5, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %175, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @atoi(i8* %180)
  %182 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %12, i32 0, i32 0
  store i64 %181, i64* %182, align 8
  %183 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %11, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %12, i32 0, i32 1
  store i64 %184, i64* %185, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @setrlimit(i32 %186, %struct.rlimit* %12)
  %188 = call i32 @memset(%struct.rlimit* %12, i32 0, i32 16)
  %189 = load i32, i32* %13, align 4
  %190 = call i32 @getrlimit(i32 %189, %struct.rlimit* %12)
  %191 = load i8*, i8** %14, align 8
  %192 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %11, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = trunc i64 %193 to i32
  %195 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %12, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i8* %191, i32 %194, i32 %197)
  br label %211

199:                                              ; preds = %136
  br label %200

200:                                              ; preds = %199, %23
  %201 = load i8**, i8*** %9, align 8
  %202 = load i32, i32* %5, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8*, i8** %201, i64 %203
  %205 = load i8*, i8** %204, align 8
  %206 = load i8**, i8*** %9, align 8
  %207 = load i32, i32* %6, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %6, align 4
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i8*, i8** %206, i64 %209
  store i8* %205, i8** %210, align 8
  br label %211

211:                                              ; preds = %200, %171, %120, %101, %94, %82, %63, %55
  %212 = load i32, i32* %5, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %19

214:                                              ; preds = %19
  %215 = load i8**, i8*** %9, align 8
  %216 = load i32, i32* %6, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  store i8* null, i8** %218, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load i32*, i32** %3, align 8
  store i32 %219, i32* %220, align 4
  ret i32 0
}

declare dso_local i32 @numberOfVChar(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i8* @strtol(i8*, i32, i32) #1

declare dso_local i32 @sqlite3MemTraceActivate(i32) #1

declare dso_local i32 @memset(%struct.rlimit*, i32, i32) #1

declare dso_local i32 @getrlimit(i32, %struct.rlimit*) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
