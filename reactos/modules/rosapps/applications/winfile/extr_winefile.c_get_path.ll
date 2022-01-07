; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_get_path.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/winfile/extr_winefile.c_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i8* }

@ET_SHELL = common dso_local global i64 0, align 8
@S_OK = common dso_local global i32 0, align 4
@SFGAO_FILESYSTEM = common dso_local global i32 0, align 4
@Globals = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@MAX_PATH = common dso_local global i32 0, align 4
@ET_UNIX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*)* @get_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_path(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ET_SHELL, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %2
  %20 = load i32, i32* @S_OK, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  store i32 0, i32* %8, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = call i32 @IShellFolder_GetAttributesOf(i32* %30, i32 1, i32* %32, i32* %8)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load i32, i32* %9, align 4
  %36 = call i64 @SUCCEEDED(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @SFGAO_FILESYSTEM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %38
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  br label %56

54:                                               ; preds = %43
  %55 = load i32*, i32** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Globals, i32 0, i32 0), align 8
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i32* [ %53, %48 ], [ %55, %54 ]
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* @MAX_PATH, align 4
  %64 = call i32 @path_from_pidlW(i32* %58, i32 %61, i8* %62, i32 %63)
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %56, %38, %34
  br label %202

66:                                               ; preds = %2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %5, align 8
  br label %68

68:                                               ; preds = %172, %66
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %175

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  store i8* %75, i8** %11, align 8
  %76 = load i8*, i8** %11, align 8
  store i8* %76, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %97, %71
  %78 = load i8*, i8** %13, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i8*, i8** %13, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 47
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i8*, i8** %13, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 92
  br label %92

92:                                               ; preds = %87, %82, %77
  %93 = phi i1 [ false, %82 ], [ false, %77 ], [ %91, %87 ]
  br i1 %93, label %94, label %100

94:                                               ; preds = %92
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i8*, i8** %13, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %13, align 8
  br label %77

100:                                              ; preds = %92
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = icmp ne %struct.TYPE_6__* %103, null
  br i1 %104, label %105, label %149

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %145

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = ptrtoint i8* %113 to i32
  %115 = load i8*, i8** %4, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = mul i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @memmove(i32 %114, i8* %115, i32 %119)
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(i8* %122, i8* %123, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ET_UNIX, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %108
  %139 = load i8*, i8** %4, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 47, i8* %140, align 1
  br label %144

141:                                              ; preds = %108
  %142 = load i8*, i8** %4, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 92, i8* %143, align 1
  br label %144

144:                                              ; preds = %141, %138
  br label %145

145:                                              ; preds = %144, %105
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  store %struct.TYPE_6__* %148, %struct.TYPE_6__** %5, align 8
  br label %171

149:                                              ; preds = %100
  %150 = load i8*, i8** %4, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = ptrtoint i8* %153 to i32
  %155 = load i8*, i8** %4, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memmove(i32 %154, i8* %155, i32 %159)
  %161 = load i8*, i8** %4, align 8
  %162 = load i8*, i8** %11, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = mul i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = call i32 @memcpy(i8* %161, i8* %162, i32 %166)
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %6, align 4
  br label %175

171:                                              ; preds = %145
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %7, align 4
  br label %68

175:                                              ; preds = %149, %68
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %197, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @ET_UNIX, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i8*, i8** %4, align 8
  %186 = load i32, i32* %6, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %6, align 4
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %185, i64 %188
  store i8 47, i8* %189, align 1
  br label %196

190:                                              ; preds = %178
  %191 = load i8*, i8** %4, align 8
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %191, i64 %194
  store i8 92, i8* %195, align 1
  br label %196

196:                                              ; preds = %190, %184
  br label %197

197:                                              ; preds = %196, %175
  %198 = load i8*, i8** %4, align 8
  %199 = load i32, i32* %6, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  store i8 0, i8* %201, align 1
  br label %202

202:                                              ; preds = %197, %65
  ret void
}

declare dso_local i32 @IShellFolder_GetAttributesOf(i32*, i32, i32*, i32*) #1

declare dso_local i64 @SUCCEEDED(i32) #1

declare dso_local i32 @path_from_pidlW(i32*, i32, i8*, i32) #1

declare dso_local i32 @memmove(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
