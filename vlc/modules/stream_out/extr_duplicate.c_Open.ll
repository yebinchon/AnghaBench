; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/extr_duplicate.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/extr_duplicate.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__*, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32, i8**, i32, i8**, i32, i8** }
%struct.TYPE_13__ = type { i8*, i32, %struct.TYPE_13__* }

@.str = private unnamed_addr constant [21 x i8] c"creating 'duplicate'\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dst\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c" * adding `%s'\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c" * ignore selection `%s' (it already has `%s')\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c" * apply selection `%s'\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c" * ignore unknown option `%s'\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"no destination given\00", align 1
@VLC_EGENERIC = common dso_local global i32 0, align 4
@Add = common dso_local global i32 0, align 4
@Del = common dso_local global i32 0, align 4
@Send = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = call %struct.TYPE_12__* @malloc(i32 48)
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %19, i32* %2, align 4
  br label %189

20:                                               ; preds = %1
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i8**, i8*** %25, align 8
  %27 = call i32 @TAB_INIT(i32 %23, i8** %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load i8**, i8*** %32, align 8
  %34 = call i32 @TAB_INIT(i32 %30, i8** %33)
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  %40 = load i8**, i8*** %39, align 8
  %41 = call i32 @TAB_INIT(i32 %37, i8** %40)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 7
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %43, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %6, align 8
  br label %45

45:                                               ; preds = %157, %20
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %48, label %161

48:                                               ; preds = %45
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @strlen(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %53 = call i32 @strncmp(i32 %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %98, label %55

55:                                               ; preds = %48
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %56, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = call %struct.TYPE_11__* @sout_StreamChainNew(i32 %63, i8* %66, i32 %69, %struct.TYPE_11__** %8)
  store %struct.TYPE_11__* %70, %struct.TYPE_11__** %7, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %72 = icmp ne %struct.TYPE_11__* %71, null
  br i1 %72, label %73, label %97

73:                                               ; preds = %55
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i8**, i8*** %78, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %81 = call i32 @TAB_APPEND(i32 %76, i8** %79, %struct.TYPE_11__* %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 3
  %87 = load i8**, i8*** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = call i32 @TAB_APPEND(i32 %84, i8** %87, %struct.TYPE_11__* %88)
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 5
  %95 = load i8**, i8*** %94, align 8
  %96 = call i32 @TAB_APPEND(i32 %92, i8** %95, %struct.TYPE_11__* null)
  br label %97

97:                                               ; preds = %73, %55
  br label %156

98:                                               ; preds = %48
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %103 = call i32 @strncmp(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %149, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %9, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %105
  %114 = load i8*, i8** %9, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %148

116:                                              ; preds = %113
  %117 = load i8*, i8** %9, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %148

121:                                              ; preds = %116
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 5
  %124 = load i8**, i8*** %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %124, i64 %129
  store i8** %130, i8*** %10, align 8
  %131 = load i8**, i8*** %10, align 8
  %132 = load i8*, i8** %131, align 8
  %133 = icmp ne i8* %132, null
  br i1 %133, label %134, label %140

134:                                              ; preds = %121
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = load i8*, i8** %9, align 8
  %137 = load i8**, i8*** %10, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Err(%struct.TYPE_11__* %135, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %136, i8* %138)
  br label %147

140:                                              ; preds = %121
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %142 = load i8*, i8** %9, align 8
  %143 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Dbg(%struct.TYPE_11__* %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %142)
  %144 = load i8*, i8** %9, align 8
  %145 = call i8* @strdup(i8* %144)
  %146 = load i8**, i8*** %10, align 8
  store i8* %145, i8** %146, align 8
  br label %147

147:                                              ; preds = %140, %134
  br label %148

148:                                              ; preds = %147, %116, %113, %105
  br label %155

149:                                              ; preds = %98
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Err(%struct.TYPE_11__* %150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %149, %148
  br label %156

156:                                              ; preds = %155, %97
  br label %157

157:                                              ; preds = %156
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %159, align 8
  store %struct.TYPE_13__* %160, %struct.TYPE_13__** %6, align 8
  br label %45

161:                                              ; preds = %45
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %168 = call i32 (%struct.TYPE_11__*, i8*, ...) @msg_Err(%struct.TYPE_11__* %167, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = call i32 @free(%struct.TYPE_12__* %169)
  %171 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %171, i32* %2, align 4
  br label %189

172:                                              ; preds = %161
  %173 = load i32, i32* @Add, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 4
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @Del, align 4
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 8
  %179 = load i32, i32* @Send, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @Control, align 4
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 0
  store %struct.TYPE_12__* %185, %struct.TYPE_12__** %187, align 8
  %188 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %172, %166, %18
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @msg_Dbg(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @malloc(i32) #1

declare dso_local i32 @TAB_INIT(i32, i8**) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_11__* @sout_StreamChainNew(i32, i8*, i32, %struct.TYPE_11__**) #1

declare dso_local i32 @TAB_APPEND(i32, i8**, %struct.TYPE_11__*) #1

declare dso_local i32 @msg_Err(%struct.TYPE_11__*, i8*, ...) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
